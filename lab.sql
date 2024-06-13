select * from BOKNINGSHISTORIK bh left join BOOKING_HISTORY_TEXT bht on bh.ROW_ID = bht.ROW_ID  where bh.C_ID = 12638 and bh.updated_at < "2024-05-18 08:42:00" and bh.updated_at > "2024-05-18 08:41:00";


select * from LOGG l  where l.C_ID = 12638 and l.DATUM < "2024-05-18 08:42:00" and l.DATUM > "2024-05-18 08:41:00";

select bh.*, bht.INFO_TEXT, b.CHECKIN, b.CHECKOUT from BOKNINGSHISTORIK bh left join BOOKING_HISTORY_TEXT bht on bh.ROW_ID = bht.ROW_ID left join BOKNING b on bh.b_id = b.id  
where bh.C_ID = 12638 and bh.updated_at < "2024-05-18 08:42:00" and bh.updated_at > "2024-05-17 11:15:00" and b.CHECKOUT > "2024-08-14" and b.CHECKIN < "2024-08-16";



Timestamp for event Channel Event 13259908
2024-05-28 10:03:07 UTC   



// roomtype_id, booked_rooms,   blocked_rooms,  DATE_STR
// 1102,        1,2,3           1,2             2024-08-13,2024-08-15
// 1102,        1,2,3           1,2             2024-08-15,2024-08-17


mysql> SELECT * FROM channel_update WHERE channel_id IN (14, 21);
+-----------+------------+-------+-------------+------------+------------+--------------+--------------+-------+-------------+---------------------+---------------------+---------------------+---------------------+---------------------+--------------------+------------------+-----------------------------+-----------------+--------------+--------------------+----------------------------+---------------+------------------+---------------+----------------------+---------------+
| row_id    | channel_id | c_id  | roomtype_id | start_date | end_date   | availability | restrictions | rates | stay_length | channel_property_id | updated_at          | created_at          | update_started_at   | request_tries_count | request_tries_left | request_priority | request_timestamp_next_send | request_headers | request_body | request_successful | request_timestamp_last_try | response_code | response_headers | response_body | response_custom_data | response_info |
+-----------+------------+-------+-------------+------------+------------+--------------+--------------+-------+-------------+---------------------+---------------------+---------------------+---------------------+---------------------+--------------------+------------------+-----------------------------+-----------------+--------------+--------------------+----------------------------+---------------+------------------+---------------+----------------------+---------------+
| 272747831 |         14 | 17580 |    13046201 | 2024-05-02 | 2024-05-09 |            1 |            1 |     0 |           1 |                3254 | 2024-05-06 07:32:27 | 2024-05-02 20:30:53 | 2024-05-06 07:32:27 |                   0 |                 15 |                0 | 2024-05-02 20:30:53         | NULL            | NULL         |               NULL | NULL                       |          NULL | NULL             | NULL          | NULL                 | NULL          |
| 272866947 |         21 | 32996 |    13099834 | 2024-05-18 | 2024-05-19 |            1 |            1 |     0 |           1 |               10984 | 2024-05-06 07:20:09 | 2024-05-03 10:55:33 | 2024-05-06 07:20:09 |                   0 |                 15 |                0 | 2024-05-03 10:55:33         | NULL            | NULL         |               NULL | NULL                       |          NULL | NULL             | NULL          | NULL                 | NULL          |
| 273301650 |         14 | 41206 |    13121411 | 2024-05-06 | 2024-05-07 |            1 |            1 |     1 |           1 |               15519 | 2024-05-06 07:36:11 | 2024-05-06 07:36:11 | NULL                |                   0 |                 15 |                0 | 2024-05-06 07:36:11         | NULL            | NULL         |               NULL | NULL                       |          NULL | NULL             | NULL          | NULL                 | NULL          |
| 273301655 |         21 | 20121 |    13055003 | 2024-05-09 | 2024-05-11 |            1 |            1 |     1 |           1 |               14032 | 2024-05-06 07:36:11 | 2024-05-06 07:36:11 | NULL                |                   0 |                 15 |                0 | 2024-05-06 07:36:11         | NULL            | NULL         |               NULL | NULL                       |          NULL | NULL             | NULL          | NULL                 | NULL          |
| 273301659 |         14 | 16397 |    13058384 | 2024-06-29 | 2024-06-29 |            1 |            1 |     1 |           1 |                3243 | 2024-05-06 07:36:13 | 2024-05-06 07:36:13 | NULL                |                   0 |                 15 |                0 | 2024-05-06 07:36:13         | NULL            | NULL         |               NULL | NULL                       |          NULL | NULL             | NULL          | NULL                 | NULL          |
| 273301662 |         14 | 16397 |    13058086 | 2024-06-29 | 2024-06-29 |            1 |            1 |     1 |           1 |                3243 | 2024-05-06 07:36:13 | 2024-05-06 07:36:13 | NULL                |                   0 |                 15 |                0 | 2024-05-06 07:36:13         | NULL            | NULL         |               NULL | NULL                       |          NULL | NULL             | NULL          | NULL                 | NULL          |
| 273301683 |         14 | 41206 |    13121411 | 2024-05-06 | 2024-05-08 |            1 |            1 |     1 |           1 |               15519 | 2024-05-06 07:36:22 | 2024-05-06 07:36:22 | NULL                |                   0 |                 15 |                0 | 2024-05-06 07:36:22         | NULL            | NULL         |               NULL | NULL                       |          NULL | NULL             | NULL          | NULL                 | NULL          |
| 273301695 |         21 | 37276 |    13112464 | 2024-05-06 | 2024-05-07 |            1 |            1 |     1 |           1 |               13709 | 2024-05-06 07:36:27 | 2024-05-06 07:36:27 | NULL                |                   0 |                 15 |                0 | 2024-05-06 07:36:27         | NULL            | NULL         |               NULL | NULL                       |          NULL | NULL             | NULL          | NULL                 | NULL          |
| 273301698 |         14 | 41206 |    13121411 | 2024-05-07 | 2024-05-08 |            1 |            1 |     1 |           1 |               15519 | 2024-05-06 07:36:28 | 2024-05-06 07:36:28 | NULL                |                   0 |                 15 |                0 | 2024-05-06 07:36:28         | NULL            | NULL         |               NULL | NULL                       |          NULL | NULL             | NULL          | NULL                 | NULL          |
+-----------+------------+-------+-------------+------------+------------+--------------+--------------+-------+-------------+---------------------+---------------------+---------------------+---------------------+---------------------+--------------------+------------------+-----------------------------+-----------------+--------------+--------------------+----------------------------+---------------+------------------+---------------+----------------------+---------------+
9 rows in set (0.00 sec)




mysql> select channel_booking_id, CANCELLED, CHANNEL_OVERBOOKED, C_ID from BOKNING where C_ID = 45365 and channel_booking_id in(4020991186, 4081509930, 4144737019, 4195028787, 4207033956, 4331882234, 4391311134, 4427970451, 4429440351, 4451695497, 4498713943, 4500721865, 4539093542, 4589247778, 4593354701, 4636805623, 4657477161, 4740911964, 4749083133, 4771992194, 4774175220, 4812575715, 4884074443, 4895114692, 4899840117, 4938673072);
+--------------------+-----------+--------------------+-------+
| channel_booking_id | CANCELLED | CHANNEL_OVERBOOKED | C_ID  |
+--------------------+-----------+--------------------+-------+
| 4020991186_del     |         1 |                  5 | 45365 |
| 4081509930         |         0 |                  5 | 45365 |
| 4144737019         |         0 |                  5 | 45365 |
| 4195028787         |         0 |                  5 | 45365 |
| 4207033956         |         2 |                  5 | 45365 |
| 4331882234         |         0 |                  5 | 45365 |
| 4391311134         |         0 |                  5 | 45365 |
| 4427970451         |         0 |                  5 | 45365 |
| 4429440351         |         0 |                  5 | 45365 |
| 4451695497         |         0 |                  5 | 45365 |
| 4498713943         |         0 |                  5 | 45365 |
| 4500721865         |         0 |                  5 | 45365 |
| 4539093542         |         0 |                  5 | 45365 |
| 4589247778         |         0 |                  5 | 45365 |
| 4593354701         |         0 |                  5 | 45365 |
| 4636805623         |         0 |                  5 | 45365 |
| 4657477161         |         0 |                  5 | 45365 |
| 4740911964         |         0 |                  5 | 45365 |
| 4749083133         |         0 |                  5 | 45365 |
| 4771992194         |         0 |                  5 | 45365 |
| 4774175220         |         0 |                  5 | 45365 |
| 4812575715         |         0 |                  5 | 45365 |
| 4884074443         |         0 |                  5 | 45365 |
| 4895114692         |         0 |                  5 | 45365 |
| 4899840117         |         0 |                  5 | 45365 |
| 4938673072         |         0 |                  5 | 45365 |
+--------------------+-----------+--------------------+-------+
26 rows in set, 1 warning (0.00 sec)


UPDATE BOKNING SET CANCELLED = 1 ,channel_booking_id = CONCAT(channel_booking_id, '_del') where C_ID = 45365 and channel_booking_id in(4020991186, 4081509930, 4144737019, 4195028787, 4207033956, 4331882234, 4391311134, 4427970451, 4429440351, 4451695497, 4498713943, 4500721865, 4539093542, 4589247778, 4593354701, 4636805623, 4657477161, 4740911964, 4749083133, 4771992194, 4774175220, 4812575715, 4884074443, 4895114692, 4899840117, 4938673072);
Query OK, 26 rows affected, 1 warning (0.01 sec)
Rows matched: 26  Changed: 26  Warnings: 1


// BASE availability q
SELECT DISTINCT rt.RUM_TYP_ID as roomtype_id, 
    (
        SELECT COALESCE(GROUP_CONCAT(DISTINCT sp.RUM_ID SEPARATOR ','),'' )
        FROM BLOCKED_UNIT sp USE INDEX(cid_rum_id), ROOM_TYPE_UNIT rtu
        where sp.C_ID = :c_id AND START <= d.DATE AND END > d.DATE
        AND rtu.ROOM_TYPE_ID = :roomtype_id AND sp.RUM_ID = rtu.UNIT_ID
        AND (BLOCK_ALL = 1 OR SPARR_ID IN (SELECT BLOCK_ID FROM BLOCKED_UNIT_ROOMTYPE WHERE ROOM_TYPE_ID = rtu.ROOM_TYPE_ID))
    ) as blocked_unit_ids,
    
    (
        SELECT COALESCE(GROUP_CONCAT(DISTINCT br.RUM_ID SEPARATOR ','),'' )
        FROM BOKNING b, BOKNING_RUM br USE INDEX (avail_update), ROOM_TYPE_UNIT rtu
        where b.C_ID = :c_id AND b.C_ID = br.C_ID
        AND rtu.ROOM_TYPE_ID = :roomtype_id AND br.RUM_ID = rtu.UNIT_ID
        AND b.BOKN_ID = br.BOKN_ID AND b.CANCELLED = 0 AND CHECK_IN <= d.DATE AND CHECK_OUT > d.DATE
    ) as booked_unit_ids,

    COALESCE((SELECT CONCAT(MAX(CHECKIN_CLOSED),'_',MAX(STAY_CLOSED),'_',MAX(CHECKOUT_CLOSED))
    FROM CLOSED cl
    WHERE cl.C_ID = :c_id AND cl.START <= d.DATE AND cl.END > d.DATE 
    AND (cl.ROOMTYPE_ID = 0 OR cl.ROOMTYPE_ID = :roomtype_id)
    AND (ALL_DAYS = 1 
        OR (DAY_1 = 1 AND WEEKDAY(d.DATE) = 0) 
        OR (DAY_2 = 1 AND WEEKDAY(d.DATE) = 1) 
        OR (DAY_3 = 1 AND WEEKDAY(d.DATE) = 2) 
        OR (DAY_4 = 1 AND WEEKDAY(d.DATE) = 3) 
        OR (DAY_5 = 1 AND WEEKDAY(d.DATE) = 4) 
        OR (DAY_6 = 1 AND WEEKDAY(d.DATE) = 5) 
        OR (DAY_7 = 1 AND WEEKDAY(d.DATE) = 6))
    ),0) AS CLOSED,
    
    

    GROUP_CONCAT(DISTINCT d.DATE ORDER BY d.DATE SEPARATOR ',') AS DATE_STR
    FROM DATE_HELPER d, RUM_TYP rt
        WHERE d.DATE >= :start_date AND d.DATE <= :end_date AND rt.RUM_TYP_ID = :roomtype_id
    GROUP BY blocked_unit_ids, booked_unit_ids, CLOSED, roomtype_id ORDER BY roomtype_id;




// Modified copy   "2024-08-13"  to "2024-08-16"
SET group_concat_max_len = 102400;
SELECT DISTINCT rt.RUM_TYP_ID as roomtype_id, 
    (
        SELECT COALESCE(GROUP_CONCAT(DISTINCT sp.RUM_ID SEPARATOR ','),'' )
        FROM BLOCKED_UNIT sp USE INDEX(cid_rum_id), ROOM_TYPE_UNIT rtu
        where sp.C_ID = 12638 AND START <= d.DATE AND END > d.DATE
        AND rtu.ROOM_TYPE_ID = 13032595 AND sp.RUM_ID = rtu.UNIT_ID
        AND (BLOCK_ALL = 1 OR SPARR_ID IN (SELECT BLOCK_ID FROM BLOCKED_UNIT_ROOMTYPE WHERE ROOM_TYPE_ID = rtu.ROOM_TYPE_ID))
    ) as blocked_unit_ids,
    (
        SELECT COALESCE(GROUP_CONCAT(DISTINCT br.RUM_ID SEPARATOR ','),'' )
        FROM BOKNING b, BOKNING_RUM br USE INDEX (avail_update), ROOM_TYPE_UNIT rtu
        where b.C_ID = 12638 AND b.C_ID = br.C_ID
        AND rtu.ROOM_TYPE_ID = 13032595 AND br.RUM_ID = rtu.UNIT_ID
        AND b.BOKN_ID = br.BOKN_ID AND b.CANCELLED = 0 AND CHECK_IN <= d.DATE AND CHECK_OUT > d.DATE
    ) as booked_unit_ids,
    COALESCE((SELECT CONCAT(MAX(CHECKIN_CLOSED),'_',MAX(STAY_CLOSED),'_',MAX(CHECKOUT_CLOSED))
    FROM CLOSED cl
    WHERE cl.C_ID = 12638 AND cl.START <= d.DATE AND cl.END > d.DATE 
    AND (cl.ROOMTYPE_ID = 0 OR cl.ROOMTYPE_ID = 13032595)
    AND (ALL_DAYS = 1 
        OR (DAY_1 = 1 AND WEEKDAY(d.DATE) = 0) 
        OR (DAY_2 = 1 AND WEEKDAY(d.DATE) = 1) 
        OR (DAY_3 = 1 AND WEEKDAY(d.DATE) = 2) 
        OR (DAY_4 = 1 AND WEEKDAY(d.DATE) = 3) 
        OR (DAY_5 = 1 AND WEEKDAY(d.DATE) = 4) 
        OR (DAY_6 = 1 AND WEEKDAY(d.DATE) = 5) 
        OR (DAY_7 = 1 AND WEEKDAY(d.DATE) = 6))
    ),0) AS CLOSED,
    GROUP_CONCAT(DISTINCT d.DATE ORDER BY d.DATE SEPARATOR ',') AS DATE_STR
    FROM DATE_HELPER d, RUM_TYP rt
    WHERE d.DATE >= "2024-08-13" AND d.DATE <= "2024-08-16" AND rt.RUM_TYP_ID = 13032595
    GROUP BY booked_unit_ids, blocked_unit_ids, CLOSED, roomtype_id ORDER BY roomtype_id;


// Count version
SELECT DISTINCT rt.RUM_TYP_ID as roomtype_id, 
    (
        SELECT COALESCE(COUNT(sp.RUM_ID),0)
        FROM BLOCKED_UNIT sp USE INDEX(cid_rum_id), ROOM_TYPE_UNIT rtu
        where sp.C_ID = 12638 AND START <= d.DATE AND END > d.DATE
        AND rtu.ROOM_TYPE_ID = 13032595 AND sp.RUM_ID = rtu.UNIT_ID
        AND (BLOCK_ALL = 1 OR SPARR_ID IN (SELECT BLOCK_ID FROM BLOCKED_UNIT_ROOMTYPE WHERE ROOM_TYPE_ID = rtu.ROOM_TYPE_ID))
    ) as blocked_unit_ids,
    (
        SELECT COALESCE(COUNT(br.RUM_ID),0)
        FROM BOKNING b, BOKNING_RUM br USE INDEX (avail_update), ROOM_TYPE_UNIT rtu
        where b.C_ID = 12638 AND b.C_ID = br.C_ID
        AND rtu.ROOM_TYPE_ID = 13032595 AND br.RUM_ID = rtu.UNIT_ID
        AND b.BOKN_ID = br.BOKN_ID AND b.CANCELLED = 0 AND CHECK_IN <= d.DATE AND CHECK_OUT > d.DATE
    ) as booked_unit_ids,
    COALESCE((SELECT CONCAT(MAX(CHECKIN_CLOSED),'_',MAX(STAY_CLOSED),'_',MAX(CHECKOUT_CLOSED))
    FROM CLOSED cl
    WHERE cl.C_ID = 12638 AND cl.START <= d.DATE AND cl.END > d.DATE 
    AND (cl.ROOMTYPE_ID = 0 OR cl.ROOMTYPE_ID = 13032595)
    AND (ALL_DAYS = 1 
        OR (DAY_1 = 1 AND WEEKDAY(d.DATE) = 0) 
        OR (DAY_2 = 1 AND WEEKDAY(d.DATE) = 1) 
        OR (DAY_3 = 1 AND WEEKDAY(d.DATE) = 2) 
        OR (DAY_4 = 1 AND WEEKDAY(d.DATE) = 3) 
        OR (DAY_5 = 1 AND WEEKDAY(d.DATE) = 4) 
        OR (DAY_6 = 1 AND WEEKDAY(d.DATE) = 5) 
        OR (DAY_7 = 1 AND WEEKDAY(d.DATE) = 6))
    ),0) AS CLOSED,
    GROUP_CONCAT(DISTINCT d.DATE ORDER BY d.DATE SEPARATOR ',') AS DATE_STR
    FROM DATE_HELPER d, RUM_TYP rt
    WHERE d.DATE >= "2024-08-13" AND d.DATE <= "2024-08-16" AND rt.RUM_TYP_ID = 13032595
    GROUP BY blocked_unit_ids, booked_unit_ids, CLOSED, roomtype_id ORDER BY roomtype_id;


    /*Strictly narow version 1107019032,1107019033,1107019034 */
SELECT DISTINCT rt.RUM_TYP_ID as roomtype_id, 
    (
        SELECT COALESCE(GROUP_CONCAT(DISTINCT br.RUM_ID SEPARATOR ','),'' )
        FROM BOKNING b, BOKNING_RUM br USE INDEX (avail_update), ROOM_TYPE_UNIT rtu
        where b.C_ID = 12638 AND b.C_ID = br.C_ID
        AND rtu.ROOM_TYPE_ID = 13032595 AND br.RUM_ID = rtu.UNIT_ID
        AND b.BOKN_ID = br.BOKN_ID AND b.CANCELLED = 0 AND CHECK_IN <= d.DATE AND CHECK_OUT > d.DATE
        AND br.RUM_ID in (1107019032,1107019033,1107019034)
    ) as booked_unit_ids,
    COALESCE((SELECT CONCAT(MAX(CHECKIN_CLOSED),'_',MAX(STAY_CLOSED),'_',MAX(CHECKOUT_CLOSED))
    FROM CLOSED cl
    WHERE cl.C_ID = 12638 AND cl.START <= d.DATE AND cl.END > d.DATE 
    AND (cl.ROOMTYPE_ID = 0 OR cl.ROOMTYPE_ID = 13032595)
    AND (ALL_DAYS = 1 
        OR (DAY_1 = 1 AND WEEKDAY(d.DATE) = 0) 
        OR (DAY_2 = 1 AND WEEKDAY(d.DATE) = 1) 
        OR (DAY_3 = 1 AND WEEKDAY(d.DATE) = 2) 
        OR (DAY_4 = 1 AND WEEKDAY(d.DATE) = 3) 
        OR (DAY_5 = 1 AND WEEKDAY(d.DATE) = 4) 
        OR (DAY_6 = 1 AND WEEKDAY(d.DATE) = 5) 
        OR (DAY_7 = 1 AND WEEKDAY(d.DATE) = 6))
    ),0) AS CLOSED,
    GROUP_CONCAT(DISTINCT d.DATE ORDER BY d.DATE SEPARATOR ',') AS DATE_STR
    FROM DATE_HELPER d, RUM_TYP rt
    WHERE d.DATE >= "2024-08-13" AND d.DATE <= "2024-08-18" AND rt.RUM_TYP_ID = 13032595
    GROUP BY booked_unit_ids, CLOSED, roomtype_id ORDER BY roomtype_id;
    
    
    /*No group by*/
    SELECT DISTINCT rt.RUM_TYP_ID as roomtype_id, 
    (
        SELECT COALESCE(GROUP_CONCAT(DISTINCT br.RUM_ID SEPARATOR ','),'' )
        FROM BOKNING b, BOKNING_RUM br USE INDEX (avail_update), ROOM_TYPE_UNIT rtu
        where b.C_ID = 12638 AND b.C_ID = br.C_ID
        AND rtu.ROOM_TYPE_ID = 13032595 AND br.RUM_ID = rtu.UNIT_ID
        AND b.BOKN_ID = br.BOKN_ID AND b.CANCELLED = 0 AND CHECK_IN <= d.DATE AND CHECK_OUT > d.DATE
        AND br.RUM_ID in (1107019032,1107019033,1107019034)
    ) as booked_unit_ids, d.DATE
    FROM DATE_HELPER d, RUM_TYP rt
    WHERE d.DATE >= "2024-08-13" AND d.DATE <= "2024-08-18" AND rt.RUM_TYP_ID = 13032595
    ORDER BY roomtype_id;