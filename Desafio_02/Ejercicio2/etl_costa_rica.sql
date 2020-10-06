create database etl_costa_rica
go
use etl_costa_rica

create table DimRegion(
id_region char(2) PRIMARY KEY,
pais varchar(15)
)

create table DimTime(
id_time int primary key,
fecha date,
dia int,
mes int,
año int
)

create table FactPercents(
id_region char(2) references DimRegion(id_region),
id_time int references DimTime(id_time),
retail_recreation int,
grocery_pharmacy int,
parks int,
transit_station int,
workplaces int,
residential int
)

