lock table cust_information read;

update cust_information set c_name='aa' where id =1;
rollback;

/*How to find duplicate records*/

select count(b_id),b_id from cust_information group by b_id having count(b_id)>1;

/*even and odd records*/

select*from cust_information where mod(id,2)=0;
select*from cust_information where mod(id,2)=1;

/*limit value record(limit 2,3,4,,,,,,)*/

select*from cust_information limit 5;