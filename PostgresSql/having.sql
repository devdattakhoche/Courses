select productname, SUM(quantity * order_details.unitprice) as AmountBought
from products
join order_details using (productid)
group by productname
having SUM(quantity * order_details.unitprice) <2000
order by AmountBought asc;

select companyname, SUM(quantity * order_details.unitprice) as AmountBought
from customers
natural join orders
natural join order_details
group by companyname
having SUM(quantity * order_details.unitprice) >5000
order by AmountBought desc;

select companyname, SUM(quantity * order_details.unitprice) as AmountBought
from customers
natural join orders
natural join order_details
WHERE orderdate between '1997-01-01' and '1997-6-30'
group by companyname
having SUM(quantity * order_details.unitprice) >5000
order by AmountBought desc;