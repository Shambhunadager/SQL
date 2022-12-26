/*date('yyyy'-'mm'-'dd');*/

select dayofyear('2022-02-15');
select dayofmonth('2022-04-13') as day;
select dayofweek('2020-08-29') as week;
select dayname('2000-06-10');
select datediff('2022-12-13','2021-08-15');
select quarter('2022-08-12');
select adddate('2022-12-23',interval 5 day);
select adddate('2022-12-22',interval -6 day);
select adddate('2022-12-24',interval 2 week);
select adddate('2022-12-24',interval 6 quarter);
select adddate('2022-12-24',interval 2 year);
select adddate('2022-12-24',interval 2 month);

create table movies(id int not null,m_name varchar(30),release_date date, created_by varchar(140) default 'shambhu', created_at time);
select*from movies;
insert into movies(id,m_name,release_date, create_at) value (1,'kantara','2022-10-15', now());
insert into movies(id,m_name,release_date, create_at) value (2,'KGF2','2021-08-18', now());
insert into movies(id,m_name,release_date, create_at) value (3,'salaga','2020-11-12', now());
insert into movies(id,m_name,release_date, create_at) value (4,'kranti',curdate(), now());

