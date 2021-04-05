/* Natural Joins*/ 
 
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


/* Left Joins  */
select productname , orderid from products 
left join order_details 
on order_details.productid = products.productid;

select productname,orderid from products 
left join order_details 
on order_details.productid = products.productid where orderid=NULL;


/* Right Joins  */
select customercustomerdemo.customerid,companyname 
from customercustomerdemo 
right join customers 
on customers.customerid = customercustomerdemo.customerid;


/* Full Joins  */

select categoryname , productname 
from categories full join products 
on categories.categoryid = products.categoryid;

/* Self Joins */
select e.companyname as companyname1 ,
q.companyname as companyname2, q.country
from suppliers as e join suppliers as q
on e.country = q.country 
where e.companyname <> q.companyname
order by e.country ;

/* Using "Using" */
select * from orders 
join order_details using(orderid)
join products using(productid);

/* Natural Joins */
select * from customers
natural join orders
natural join order_details;


