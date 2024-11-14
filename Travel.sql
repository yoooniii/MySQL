--MariaDB

drop database if exists travel;
create database Travel;
use travel;

зад 1.
create table countries(id tinyint primary key auto_increment, name varchar(30));

зад 2.
insert into countries values 
(1,'France'),
(2,'Germany'),
(3,'Italy'),
(4,'Spain'),
(5,'Austria');

зад 3.
create table destinations (id tinyint primary key auto_increment, town varchar(30), distance smallint, duration tinyint, price decimal(10,2), countryid smallint,FOREIGN KEY (countryid) REFERENCES countries(ID));

зад 4.
insert into destinations values 
(1,	'Paris',	2169,	4,	1800.00,	1),
(2,	'Berlin',	4006,	6,	2100.00,	2),
(3,	'Rome',		1666,	3,	1500.00,	3),
(4,	'Madrid',	2966,	7,	1800.00,	4),
(5,	'Milan',	1408,	4,	1900.00,	3),
(6,	'Venice',	1152,	3,	1200.00,	3),
(7,	'Barcelona',	2375,	7,	2800.00,	4);

зад 5.
update destinations set price=1700 where town='paris';

зад 6.
delete from destinations where town ='barcelona';

зад 7.
select town, countries.name, price from destinations JOIN countries ON destinations.countryid=countries.id;

зад 8.
select town, distance from destinations where distance>1500 and distance<2500;

зад 9.
select town, price from destinations where price=(select max(price) from destinations);

зад 10.
select name, count(*) as cnt from countries join destinations on destinations.countryid=countries.id group by name order by cnt desc;

зад 11.
select name from countries left join destinations on destinations.countryid=countries.id where destinations.countryid is null;



select name,destinations.countryid from countries left join destinations on destinations.countryid=countries.id ;
select name,destinations.countryid from countries left join destinations on destinations.countryid=countries.id where destinations.countryid ;