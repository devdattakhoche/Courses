select c.companyname,categoryname,productname,sum(od.unitprice*quantity)
from customers as c
natural join orders
natural join order_details as od
join products using (productid)
join categories  using (categoryid)
group by rollup(companyname, categoryname, productname)
order by companyname,categoryname,productname;

select s.companyname as supplier, c.companyname as buyer,productname, sum(od.unitprice*quantity)
from suppliers as s
join products using (supplierid)
join order_details as od using (productid)
join orders using (orderid)
join customers as c using (customerid)
group by rollup(supplier, buyer, productname)
order by supplier,buyer,productname;