create table freedom_fighters(id int,name varchar(30),birth_place varchar(30),birth_date date,region varchar(30));
select*from freedom_fighters;
desc freedom_fighters;

/*syntax for adding the constraint*/
alter table freedom_fighters add constraint freedom_figh_uk unique(name);
alter table freedom_fighters add constraint age_check check (age>=20);
alter table freedom_firhters add column age int not null;
alter table freeedom_firhters add constraint freedom_pk primary key(id);

/*drop for constriants*/
alter table freedom_fighters drop constraint id_check;
alter table freedom_figthters drop primary key;

select*from freedom_fighters;
insert into freedom_fighters values(1,'Bhagat','Gujartha','1886-08-05','south');
insert into freedom_fighters values(2,'Subaschindrubose','Odisa','1858-01-23','south');
insert into freedom_fighters values(3,'Rayanna','Karnataka','1865-08-15','north');
insert into freedom_fighters values(4,'Chanamma','Maharatra','1878-12-03','north');
insert into freedom_fighters values(5,'Thilak','Tamilnadu','1856-03-12','north');

create table  british_officers(id int,name varchar(30),country varchar(30));

select*from british_officers;

insert into british_officers values (1,'William','England');
insert into british_officers values (2,'Jhon','Etali');
insert into british_officers values (3,'Jhemsh','Pranch');
insert into british_officers values (4,'Wadran','USA');
insert into british_officers values (5,'Millan','Iceland');


/*LPAD ;left padding
RPAD ;right padding*/

/*select lpad(original String,lengthof String,valuetoobeadded)*/

select lpad('XWorkZ',15,'aaa');
select lpad('Bengauru',4,'ss');
select rpad('Haveri',12,'sss');

select rpad(name,20,Haveri) from freedom_fighters;
select lpad(name,22,Huballi) from british_officers;


/*Group*/
select count(*),region from freedom_fighters group by region;

create table bank_date(id int,name varchar(30),acc_type varchar(40));

select*from bank_date;
insert into bank_date values(1,'Shambhu''Savings');
insert into bank_date values(2,'Sunil''Current');
insert into bank_date values(3,'Lokesh''Savings');
insert into bank_date values(4,'Sachi''Joint');
insert into bank_date values(5,'Punith''Savings');
insert into bank_date values(6,'Pavan''Current');
insert into bank_date values(7,'Arun''Joint');
insert into bank_date values(8,'Ramesh''Current');
insert into bank_date values(9,'Halesh''Savings');
insert into bank_date values(10,'Raghu''Savings');
commit;
select count(*),acc_type from bank_date group by acc_type;

/*Having*/

select count(*) as total,id from freedom_fighters group by id having id;
select max(birth_date),birth_date from freedom_fighters group by birth_date;
select min(birth_date),birth_date from freedom_fighters group by birth_date;
select avg(birth_date),birth_date from freedom_fighters group by birth_date;


/*views*/
create view viewname as select*from table_name;
create view bank_view as select*from bank_date;
select*from bank_view;

update freedom_fighters set name='SongoliRayann' where id=3;
