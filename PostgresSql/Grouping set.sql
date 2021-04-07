select categoryname,productname,sum(od.unitprice*quantity)
from categories
natural join products
natural join order_details as od
group by grouping sets  ((categoryname),(categoryname,productname))
order by categoryname, productname;

select q.companyname as buyer,l.companyname as supplier,sum(f.unitprice*quantity)
from customers as q
natural join orders
natural join order_details as f
join products using (productid)
join suppliers  as l using (supplierid)
group by grouping sets ((buyer),(buyer,supplier))
order by buyer,supplier;

select companyname,categoryname,sum(od.unitprice*quantity)
from customers as c
natural join orders
natural join order_details as od
join products using (productid)
join categories  as s using (categoryid)
group by grouping sets ((companyname),(companyname,categoryname))
order by companyname,categoryname nulls first;