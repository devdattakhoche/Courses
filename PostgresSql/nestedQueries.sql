select companyname,contactname from customers 
where exists (select customerid from orders
where customerid=customers.customerid and
orderdate between '1997-04-01' and '1997-04-30');


select companyname,contactname from customers 
where not exists (select customerid from orders
where customerid=customers.customerid and
orderdate between '1997-04-01' and '1997-04-30');

select companyname from suppliers where  not exists 
(select products.productid from products
join order_details on products.productid=order_details.productid
join orders on order_details.orderid=orders.orderid
where suppliers.supplierid=products.supplierid and
orderdate between '1996-12-01' and '1996-12-31' );


select companyname from suppliers where exists (
select productid , productname from products where  unitprice > 200
)
