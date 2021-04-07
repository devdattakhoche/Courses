select companyname
from customers
union
select companyname
from suppliers;

select city
from customers
union all
select city
from suppliers;

select country
from customers
union
select country
from suppliers
order by country asc;

select country
from customers
union all
select country
from suppliers
order by country asc;