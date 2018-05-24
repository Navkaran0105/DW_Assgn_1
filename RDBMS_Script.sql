create table stops (
stopd_id int(11) primary key,
name_stop text,
lat double,
log double
);

create table trips(
block_id varchar(50),
route_id varchar(50),
trip_headsign varchar(50),
service_id varchar(50),
shape_id varchar(50),
trip_id varchar(50) primary key
);


create table stoptimes1 (
trip_id varchar(50),
arrival_time time,
departure_time time,
stop_id int(11),
stop_sequence int(3),
FOREIGN KEY FK_TRIP_ID (TRIP_ID) REFERENCES TRIPS,
FOREIGN KEY FK_STOP_ID (STOP_ID) REFERENCES STOPS
);

/*
Assigned Trip_id the DataType of varchar(50).
Made trip_id as a PK in trips table
and stop_id as PK in stops table.
Made trip_id,stop_id as FK in stoptimes table. 
*/

/*
Data Normalising >> Changed the incorrect values of time to correct values of 24-hour format

for this first imported the data in which arrival and departure time were of text type and then I changed both of them to time type without facing
any data truncation.
*/
update stoptimes set arrival_time=hour(arrival_time)-23
where hour(arrival_time)>23;

select * from stoptimes where hour(arrival_time)>23;




/*
Question a
*/

select distinct(trip_headsign) from trips
join stoptimes s on trips.trip_id = s.trip_id
join stops s2 on s.stop_id = s2.stop_id
where s2.stop_id = (select stop_id from stops where name_stop = "south Park St [northbound] after South St");

/*
Question b
*/

select distinct(trip_headsign) from trips
join stoptimes s on trips.trip_id = s.trip_id
where s.arrival_time between "18:00:00" and "22:00:00";


/*
Question c
*/
select trip_id,name_stop,route_id,trip_headsign,arrival_time,departure_time,stop_sequence,lat,log from trips 
join stoptimes using(trip_id)
join stops using(stop_id)
where trip_headsign="330 HALIFAX" and route_id="330-114";




## Question d
select count(route_id) as BD,name_stop from trips
join stoptimes using(trip_id)
join stops using(stop_id)
group by stop_id
order by BD desc
limit 3;


