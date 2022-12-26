create table creadit_card(id int not null,c_id int primary key, balance bigint not null);
create table customer_info (id int not null,customer_name varchar(30),creadit_id int,foreign key (customer_name) references creadit_card(customer_name));
select*from creadit_card;
select*from customer_info;

insert into creadit_card values(1,5001,4563);
insert into creadit_card values(2,5002,8564);
insert into creadit_card values(3,5003,2345);
insert into creadit_card values(4,5004,4826);

insert into creadit_card values(1,'shambhu',5501);
insert into creadit_card values(2,'pavan',5002);
insert into creadit_card values(3,'arun',5003);
insert into creadit_card values(4,'anand',5004);
