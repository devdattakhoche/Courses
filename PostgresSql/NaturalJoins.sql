select  companyname,orderdate,shipcountry from orders join customers on customers.customerid = orders.customerid;
select firstname ,lastname,orderdate from employees join orders on employees.employeeid = orders.employeeid;
select companyname,unitprice,unitsinstock from products join suppliers on products.supplierid = suppliers.supplierid; 

select companyname,orderdate,unitprice,quantity from orders
join order_details on orders.orderid=order_details.orderid
join customers on customers.customerid=orders.customerid;

select companyname, productname, orderdate, order_details.unitprice, quantity
from orders
join order_details on orders.orderid=order_details.orderid
join customers on customers.customerid=orders.customerid
join products on products.productid=order_details.productid;

select categoryname ,companyname, productname, orderdate, order_details.unitprice, quantity
from orders
join order_details on orders.orderid=order_details.orderid
join customers on customers.customerid=orders.customerid
join products on products.productid=order_details.productid
join categories on categories.categoryid=products.categoryid;


select categoryname ,companyname, productname, orderdate, order_details.unitprice, quantity
from orders
join order_details on orders.orderid=order_details.orderid
join customers on customers.customerid=orders.customerid
join products on products.productid=order_details.productid
join categories on categories.categoryid=products.categoryid
where categoryname='Seafood' and order_details.unitprice*quantity >= 500;;
