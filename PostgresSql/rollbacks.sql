start transaction;

update orders
set orderdate = orderdate + interval '1 year';

rollback;


start transaction;

insert into employees (employeeid,lastname,firstname,title,birthdate,hiredate)
values (501,'sue','jones','operations assistant','1999-05-23','2017-06-13');

savepoint inserted_employee;

update employees
set birthdate='2025-07-11';

rollback to inserted_employee;

update employees
set birthdate='1998-05-23'
where employeeid=501;

commit;

select *
from employees
where employeeid=501;