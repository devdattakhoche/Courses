select distinct companyname from suppliers
join products using(supplierid)
join order_details using(productid)
where quantity = 1;


select distinct productname
from products
join order_details on products.productid=order_details.productid
where  order_details.unitprice*quantity > all
	(select avg(order_details.unitprice*quantity)
             from order_details
             group by productid);

 select distinct companyname
 from customers
 join orders on orders.customerid=customers.customerid
 join order_details on orders.orderid=order_details.orderid
 where  order_details.unitprice*quantity > all
 	(select avg(order_details.unitprice*quantity)
              from order_details
             join orders on orders.orderid=order_details.orderid
             group by orders.customerid);