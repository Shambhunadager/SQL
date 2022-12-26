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




