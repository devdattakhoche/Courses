with top_category_sales as (
 select categoryname,sum(od.unitprice*quantity) as sales
	from categories as c
	join products using(categoryid)
	join order_details as od using (productid)
	group by categoryname
	order by sales desc limit 3
)
select categoryname,productname,sum(od.quantity) as product_units,
sum(od.unitprice*quantity) as product_sales
from categories as c
join products using(categoryid)
join order_details as od using (productid)
where categoryname in (select categoryname from top_category_sales)
group by categoryname,productname
order by categoryname;


with slowest_products as (
	select productid,sum(od.quantity)
	from products
	join order_details as od using (productid)
	group by productid
	order by sum(od.quantity) asc
	limit 2
)
select distinct(companyname)
from customers
natural join orders
natural join order_details
where productid in (select productid from  slowest_products)