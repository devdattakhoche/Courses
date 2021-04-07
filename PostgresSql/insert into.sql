insert into suppliers_northamerica
select *
from suppliers
where country in ('brazil','argentina')

select * from suppliers_northamerica;

insert into orders_1997
select * from orders
where orderdate between '1996-12-01' and '1996-12-31'