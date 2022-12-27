/* join;
1) inner join;
syntax :- select*from table_name inner join table_name on condition*/

create table a(id int,name varchar(30));
insert into a values(1,'tv'),(2,'fan'),(3,'laptop'),(4,'mobile'),(5,'lamp');
create table b(id int,name varchar(30));
insert into b values(1,'lamp'),(2,'projector'),(3,'laptop'),(4,'ups'),(5,'fan');
select*from a;
select*from b;
select*from c;
create table c(id int,name varchar(30));
insert into c values(1,'fan'),(2,'keybroad'),(3,'charger'),(4,'headphone'),(5,'lamp');
select* from a inner join b on a.id=b.id;
select*from a inner join b on a.name=b.name inner join c on b.name=c.name;
select*from a inner join b on a.id=b.id inner join c on b.id=c.id;



/*2)LEFT JOIN:
Syntax:-select*from a left join b on a.id=b.id;*/

select*from a left join b on a.name=b.name;
select*from a left join b on a.id=b.id inner join c on b.name=c.name;
select*from a left join b on a.id=b.id inner join c on b.id=c.id;
select*from a left join b on a.id=b.id left join c on b.name=c.name;

/* RIGHT JOIN:
SYNTAX:-SELECT* FROM A RIGHT JOIN B ON A.ID=B.ID*/

select*from a right join b on a.id=b.id;
select*from a right join b on a.name=b.name;
select*from a right join b on a.id=b.id inner join c on b.name=c.name;
select*from a right join b on a.id=b.id left join c on b.name=c.name;
select*from a right join b on a.id=b.id inner join c on b.id=c.id;



create table bank_information(id int not null,b_name varchar(40) unique not null,b_id int not null, no_of_customers int not null, loan_status varchar(30) default 'ACTIVE',location varchar(30) not null);

select*from bank_information;

insert into bank_information values(1,'SBI',501,800,'Active','Domluru');
insert into bank_information values(2,'KARNATAKA',502,700,'Active','BTM');
insert into bank_information values(3,'AXIS',503,500,'Active','Srinagar');
insert into bank_information values(4,'MYSORUBANK',504,900,'Active','JPnagar');
insert into bank_information values(5,'KVGBANK',505,200,'Active','Endranagar');
insert into bank_information values(6,'INDIANBANK',506,405,'Active','Ejipura');
insert into bank_information values(7,'HDFC',507,850,'Active','Dopanahalli');
insert into bank_information values(8,'ICIC',508,650,'Active','RRnagar');
insert into bank_information values(9,'KODAK',509,550,'Active','MGRoad');
insert into bank_information values(10,'CORPOTION',510,720,'Active','Madiwal');
commit;

create table cust_information(id int not null,c_name varchar(30) not null,balance bigint not null,c_id int not null,b_id int not null,c_location varchar(30));

select*from cust_information;

insert into cust_information values(1,'Shiva',2000,701,501,'Bommanahalli');
insert into cust_information values(2,'Naveen',5000,702,502,'SilkBoad');
insert into cust_information values(3,'Basavaraja',8000,703,503,'Halasuru');
insert into cust_information values(4,'Ravi',3000,704,504,'Whitefield');
insert into cust_information values(5,'Santosh',8000,705,505,'Electroncity');
insert into cust_information values(6,'Manju',6000,706,506,'KGhalli');
insert into cust_information values(7,'Praveen',9000,707,507,'Sanjaynagar');
insert into cust_information values(8,'Rakesh',7000,708,511,'Yashavanthapura');
insert into cust_information values(9,'Varun',1000,709,512,'Banavagudi');
insert into cust_information values(10,'Shridhar',2500,710,513,'RajaRajinagar');
commit;

create table loan_information(id int not null,loan_type varchar(40),loan_amount bigint not null,c_id int not null);

select*from loan_information;

insert into loan_information values(1,'HomeLoan',50000,711 );
insert into loan_information values(2,'CrapLoan',200000,712);
insert into loan_information values(3,'EductionLoan',500000,713);
insert into loan_information values(4,'CarLoan',300000,714);
insert into loan_information values(5,'GoldLoan',100000,701);
insert into loan_information values(6,'BikeLoan',50000,702);
insert into loan_information values(7,'TractraLoan',1000000,703);
insert into loan_information values(8,'AutoLoan',20000,704);
insert into loan_information values(9,'JobLoan',30000,705);
insert into loan_information values(10,'FieldLoan',400000,706);
commit;







