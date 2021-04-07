select *
into suppliers_northamerica
from suppliers
where country in ('usa','canada');

select * from suppliers_northamerica;

select *
into orders_1997
from orders
where orderdate between '1997-01-01' and '1997-12-31';

select * from orders_1997;