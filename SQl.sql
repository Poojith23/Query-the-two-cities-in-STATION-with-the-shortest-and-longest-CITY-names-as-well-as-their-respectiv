Query the two cities in STATION with the shortest and longest CITY names, as well as their respective lengths (i.e.: number of characters in the name). If there is more than one smallest or largest city, choose the one that comes first when ordered alphabetically.
The STATION table is described as follows:

CREATE TABLE STATION(id number(10),city varchar(21),state varchar(2),lat_n number(10),long_w number(10));

where LAT_N is the northern latitude and LONG_W is the western longitude.

Sample Input

For example, CITY has four entries: DEF, ABC, PQRS and WXY.

 QUERY:

(select CITY, length(CITY) as city_len from STATION order by city_len asc, CITY asc limit 1) 
UNION
(select CITY, length(city) as city_len from STATION order by city_len desc, CITY asc limit 1);