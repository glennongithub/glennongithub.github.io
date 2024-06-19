<?php

// config
$start = '2018-09-01 00:00:00';
// end config


throw new \Exception('Comment out this line if you really want to run this file and after you changed config above. ');

use Sirvoy\ChannelBundle\Entity\ChannelProperty;
use Sirvoy\ChannelBundle\Service\ChannelService;
use Sirvoy\EngineBundle\Component\ChannelService\ChannelService as EngineChannelService;

/** @var ChannelService $channelService */
$channelService = $controller->getService(ChannelService::class);
/** @var EngineChannelService $engineChannelService */
$engineChannelService = $controller->getService(EngineChannelService::class);
/** @var \Sirvoy\EngineBundle\Service\ChannelBookingProcessService $channelBookingProcessService */
$channelBookingProcessService = $controller->getService(\Sirvoy\EngineBundle\Service\ChannelBookingProcessService::class);

// this file is only run on emergency
// Steps to make this work
// stop channel-fetch crons
// probably stop all incoming bookings again
// move channel_retrieval_log table from new prod_db to restored prod_db to have all channel imports
// or just export all rows from a specific timestamp .. otherwise it will be to much data

// for each channel
//      for each logged row
//          parse data in received field as if it was a curl
//          for channels that push to us .. make sure to look in the right field .. we do usually always save data from
//          channel in response field to be consequent even if they push to us and it reality is the request.
//
//


// doing this as a request once per channel tool


// query is common for several maybe all channels except channel_id
$query = $em->createQuery(
    'SELECT e
                FROM ' . \Sirvoy\ChannelBundle\Entity\ChannelRetrievalLog::class . ' e
                WHERE e.channelId = ' . $_REQUEST['channel'] . '
                AND e.succeeded > ' . $start . '
                AND e.processed IS NOT NULL'
);

// BDC
if ($_REQUEST['channel'] == 6) {
    $bDotComRows = $query->getResult();

    /** @var \Sirvoy\ChannelBundle\ChannelHelper\BookingComChannel $bookingComChannel */
    $bookingComChannel = $channelService->getChannelHelper(ChannelProperty::CHANNEL_BOOKING_COM);

    /** @var \Sirvoy\ChannelBundle\Entity\ChannelRetrievalLog $row */
    foreach ($bDotComRows as $row) {
        //make sure we count this as an retry.
        $row->setRetries($row->getRetries() + 1);
        $em->persist($row);

        // Try to create xmlObject of the returned response
        // If not a valid xml type .. we assume error
        $response = $row->getResponse();
        $xml = $bookingComChannel->readXMLSafely('<?xml version="1.0" encoding="utf-8" ?>' . $response, 'reimport_from_log');

        if (!str_contains($response, '<reservations>')) {
            continue;
        }

        //
        // Parse xml-response from b.com to our own generic format.
        //
        $receivedBookings = $bookingComChannel->parseFetchData($response);

        //
        // Process received bookings
        //
        foreach ($receivedBookings as $b) {
            handleChannelBooking_emergency($b, $channelBookingProcessService, $em);
        }

        //above import did not crash..
        // celebrate that by setting timestamp on related logRow
        $row->setProcessed(new \DateTime('now'));
        //and then persist and flush
        $em->persist($row);
        $em->flush();
    }
}


// Expedia
if ($_REQUEST['channel'] == 4) {

    /** @var \Sirvoy\ChannelBundle\ChannelHelper\ExpediaChannel $expediaService */
    $expediaService = $channelService
        ->getChannelHelper(ChannelProperty::CHANNEL_EXPEDIA);

    $expediaRows = $query->getResult();

    foreach ($expediaRows as $row) {
        //make sure we count this as an retry.
        $row->setRetries($row->getRetries() + 1);
        $em->persist($row);

        // Try to create xmlObject of the returned response
        // If not a valid xml type .. we assume error
        $response = $row->getResponse();
        $xml = $expediaService->readXMLSafely('<?xml version="1.0" encoding="utf-8" ?>' . $response, 'reimport_from_log');

        // if response doesn't have Bookings tag or we don't have bookings, move along
        if (!str_contains($response, '<Bookings') || !count($xml->Bookings->children())) {
            continue;
        }

        //
        // Parse xml response from Expedia to our own generic format.
        //
        $receivedBookings = $expediaService->parseBookingsFromXmlObject($xml);

        //
        // Process received bookings
        //
        foreach ($receivedBookings as $b) {
            handleChannelBooking_emergency($b, $channelBookingProcessService, $em);
        }

        //above import did not crash..
        // celebrate that by setting timestamp on related logRow
        $row->setProcessed(new \DateTime('now'));
        //and then persist and flush
        $em->persist($row);
        $em->flush();
    }
}

// TODO work through the other channels
// most of them should be similar to BDC

function handleChannelBooking_emergency(
    $b,
    \Sirvoy\EngineBundle\Service\ChannelBookingProcessService $channelBookingProcessService,
    \Doctrine\ORM\EntityManagerInterface $em,
) {
    // No real use of trying if we have no channelBooking Id
    if ($b['channelBookingId'] != "") {
        // if an icalchannel .. we only keep id 17 in channel_property-table
        $lookForChannel = (in_array($b['bookingSource'], ChannelProperty::ICAL_CHANNELS)) ? 17 : $b['bookingSource'];
        /** @var \Sirvoy\ChannelBundle\Entity\ChannelProperty $channelProperty */
        $channelProperty = $em->getRepository(\Sirvoy\ChannelBundle\Entity\ChannelProperty::class)->findOneBy(['hotelId' => $b['channelPropertyId'], 'channelId' => $lookForChannel]);

        /** @var \Sirvoy\CustomerBundle\Entity\Customer $customer */
        $customer = $channelProperty->getCustomer();

        // There may exist more rows .. if modifications where made for same booking.
        // Possibly look for those later .. and cancel / update relevant bookings
        // but for now we just need to find any row .. to get the original bookingId
        /** @var \Sirvoy\MainBundle\Entity\BookingLog $bookingLog */
        $bookingLog = $em->getRepository(\Sirvoy\MainBundle\Entity\BookingLog::class)->findOneBy(['customer' => $customer, 'channelBookingId' => $b['channelBookingId']]);

        // create the booking the normal way
        [
            'channelBookingData' => $channelBookingData,
            'sirvoyBooking' => $createdBooking,
            'errorCodes' => $errorCodes,
        ] = $channelBookingProcessService->processChannelBooking($b);

        //set the booking_id according to what it had in the other db
        $createdBooking->setBookingId($bookingLog->getBookingId());

        $em->persist($createdBooking);
        $em->flush();
    }
}
