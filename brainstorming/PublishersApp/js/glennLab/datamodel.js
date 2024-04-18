// @ts-check
/**
 * Draft of how I might structure data for congregation administration
 *
 * 
 * Geo location
 * @typedef {{
 *  longitude: number,
 *  latitude: number,
 * }} GoeLocation
 * 
 * Address location
 * @typedef {{
 *  streetAddress: string,
 *  postcode: string,
 *  city: string,
 *  county?: string,
 *  mapLocation?: GoeLocation, 
 * }} AddressLocation
 *
 * Spiritual status
 * increasing level where a level can only be reached by first fullfil all previous levels
 * 
 * const INTERESTED = 0;
 * const PUBLISHER = 1;
 * const BAPTISED = 2;
 * const GOOD_STANDING = 3;
 * const EXEMPLARY = 4;
 * const ASSIGNED_SPECIAL_RESPONSIBILLITY = 5;
 * const MINISTERIAL_SEVANT = 6;
 * const ELDER = 7;
 * 
 * SpiritualStatus
 * @typedef {0|1|2|3|4|5|6|7} SpiritualStatus
 * @typedef {'heaven'|'earth'} FutureHope
 * 
 * Publisher 
 * @typedef {{ 
 *  id: string, 
 *  lastName: string, 
 *  firstName: string, 
 *  homeAddress: AddressLocation,
 *  futureHope: FutureHope,
 *  spiritualStatus: SpiritualStatus,
 * }} Publisher
 * */

const INTERESTED = 0;
const PUBLISHER = 1;
const BAPTISED = 2;
const GOOD_STANDING = 3;
const EXEMPLARY = 4;
const ASSIGNED_SPECIAL_RESPONSIBILLITY = 5;
const MINISTERIAL_SEVANT = 6;
const ELDER = 7;


/**
 * @type Publisher
 */
const publisher = {
    id: '0',
    lastName: 'Doe',
    firstName: 'John',
    homeAddress: {
        streetAddress:'Street 1',
        postcode: '12345',
        city: 'TheTown',
        county: 'The nice state',
        mapLocation: {
            longitude: 1232333.244,
            latitude: 23542354235,
        }
    },
    futureHope: 'earth',
    spiritualStatus: ELDER,
};