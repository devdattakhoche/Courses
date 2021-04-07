select extract(year from age(birthdate)),firstname, lastname
from employees;

select date_part('day', shippeddate)
from orders;

select extract(decade from age(birthdate)),firstname, lastname
from employees;

select date_part('decade',age(birthdate)),firstname, lastname
from employees;


--

select hiredate::timestamp
from employees;

select cast(hiredate as timestamp)
from employees;

select (ceil(unitprice*quantity))::text || ' dollars spent'
from order_details;

select cast('2015-10-03' as date),  375::text;