--MariaDB

drop database if exists travel;
create database Travel;
use travel;

create table countries(id tinyint primary key auto_increment, name varchar(30));

insert into countries values 
(1,'France'),
(2,'Germany'),
(3,'Italy'),
(4,'Spain'),
(5,'Austria');

create table destinations (id tinyint primary key auto_increment, town varchar(30), distance smallint, duration tinyint, price decimal(10,2), countryid smallint,FOREIGN KEY (countryid) REFERENCES countries(ID));

insert into destinations values 
(1,	'Paris',	2169,	4,	1800.00,	1),
(2,	'Berlin',	4006,	6,	2100.00,	2),
(3,	'Rome',		1666,	3,	1500.00,	3),
(4,	'Madrid',	2966,	7,	1800.00,	4),
(5,	'Milan',	1408,	4,	1900.00,	3),
(6,	'Venice',	1152,	3,	1200.00,	3),
(7,	'Barcelona',	2375,	7,	2800.00,	4);

update destinations set price=1700 where town='paris';

delete from destinations where town ='barcelona';

select town, countries.name, price from destinations JOIN countries ON destinations.countryid=countries.id;

select town, distance from destinations where distance>1500 and distance<2500;

select town, price from destinations where price=(select max(price) from destinations);

select name, count(*) as cnt from countries join destinations on destinations.countryid=countries.id group by name order by cnt desc;

select name from countries left join destinations on destinations.countryid=countries.id where destinations.countryid is null;
