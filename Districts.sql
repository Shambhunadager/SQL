create table districts_info(name varchar(30) unique,noOfTaluk varchar(30) not null,id int not null, population long not null, area int primary key,
special_place varchar(30), pincode int);
select*from districts_info;
insert into  districts_info values('Haveri',15,1,1597668,4823,'Badyagi',58116);
insert into  districts_info values('Dharwad',12,2,1847023,4260,'Hubbali',58186);
insert into  districts_info values('Belagvi',18,3,4779661,13415,'Belagvi',58458);
insert into  districts_info values('Bidar',17,4,15647,3468,'Bidar',585401);
insert into  districts_info values('Davanagere',16,5,194586,5863,'Harihar',58118);
insert into  districts_info values('Gadag',11,6,106487,4523,'gadag',58165);
insert into  districts_info values('Chitradurga',13,7,168458,8443,'durga',58254);
insert into  districts_info values('Hasan',10,8,17755,4823,'ramanagar',58345);
insert into  districts_info values('Shimoga',9,9,145638,6523,'joga',58176);
insert into  districts_info values('Kolar',7,10,139781,5223,'kolar',58451);
commit;
desc taluk_info;

create table taluk_info(name varchar(30) unique,noOfCity varchar(30) not null,id int not null unique,population int not null,area int primary key,noOfVillage varchar(30),check(area>=200),foreign key(area) references districts_info(area));
alter table taluk_info modify column noOfCity varchar(50);

select*from taluk_info;

insert into taluk_info values('Haveri',5,1,85643,4823,25);
insert into taluk_info values('Ranebenuru',3,2,53461,4260,12);
insert into taluk_info values('Byadgi',1,3,56874,13415,11);
insert into taluk_info values('Rattihalli',3,4,25643,3468,15);
insert into taluk_info values('Hirakeruru',4,5,56472,5863,18);
insert into taluk_info values('Hangal',3,5,24565,4523,11);
insert into taluk_info values('Hosabavi',1,6,42062,8443,18);
insert into taluk_info values('Shigav',2,7,36301,4823,19);
insert into taluk_info values('Masuru',1,8,14512,6523,12);
insert into taluk_info values('halageri',4,9,34445,5223,17);
insert into taluk_info values('Guttal',1,10,4562,1286,10);





