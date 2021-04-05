select country , count(*)
from customers
group by country
order by count(*) desc;

select count(*),categoryname
from categories
join products  using(categoryid)
group by categoryname
order by count(*) desc;

select productname,round(avg(quantity))
from products
join order_details using(productid)
group by productname
order by AVG(quantity) desc;

select count(*),country
from suppliers
group by country
order by count(*) desc;

select productname, sum(quantity * order_details.unitprice) as AmountBought
from products
join order_details using(productid)
join orders using(orderid)
WHERE orderdate between '1997-01-01' and '1997-12-31'
group by productname
order by AmountBought desc;