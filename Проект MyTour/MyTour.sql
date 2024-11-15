--MariaDB

drop database if exists mytour;
create database mytour;
use mytour;

create table bul(id tinyint auto_increment primary key, town1 varchar(16) not null, town2 varchar(16) not null, km smallint(4) not null);
create table rom(id tinyint auto_increment primary key, town1 varchar(16) not null, town2 varchar(16) not null, km smallint(4) not null);

insert into rom values
(1,'Vratsa','Sibiu','292'),
(2,'Sliven','Sibiu','387'),
(3,'Gabrovo','Sibiu','338'),
(4,'Haskovo','Sibiu','444'),
(5,'Blagoevgrad','Timisoara','442'),
(6,'Burgas','Bucharest','241'),
(7,'Haskovo','Iasi','604'),
(8,'Plovdiv','Bucharest','276'),
(9,'Vratsa','Bucharest','246'),
(10,'Gabrovo','Timisoara','458'),
(11,'Burgas','Arad','638'),
(12,'Shumen','Sibiu','357'),
(13,'Montana','Bacau','455'),
(14,'Stara Zagora','Sibiu','393'),
(15,'Pleven','Bucharest','164');
insert into bul values
(1,'Shumen','Montana','300'),
(2,'Sofia','Varna','379'),
(3,'Yambol','Sofia','262'),
(4,'Pleven','Sofia','132'),
(5,'Vratsa','Montana','35'),
(6,'Sliven','Montana','265'),
(7,'Plovdiv','Yambol','149'),
(8,'Burgas','Sofia','341'),
(9,'Sofia','Burgas','341'),
(10,'Burgas','Gabrovo','180'),
(11,'Pleven','Yambol','185'),
(12,'Stara Zagora','Yambol','71'),
(13,'Haskovo','Montana','252'),
(14,'Vratsa','Sofia','60'),
(15,'Varna','Montana','381'),
(16,'Montana','Pleven','113'),
(17,'Ruse','Montana','225'),
(18,'Blagoevgrad','Montana','155');

select max(char_length(CONCAT_Ws(" - ", town1,town2))) as max_len from bul;

select max(char_length(CONCAT_Ws(" - ", town1,town2))) as max_len from rom;

-зад5.


-зад6.
