insert into employees
(firstname,lastname,address,city,country,postalcode,homephone,title,employeeid,reportsto)
values
('bob','smith','463-4613 ipsum street','new orleans','usa','73-638','741-0423','chief strategy',50,null)
returning employeeid;

insert into orders (customerid,employeeid,requireddate,shippeddate,orderid)
values ('vinet',5,'1996-08-01','1996-08-10',500) returning orderid;

update products
set unitprice = unitprice * 1.2
where productid=1
returning productid,unitprice as new_price;


update order_details
set quantity = quantity * 2
where orderid=10248 and productid=11
returning quantity as new_quantity;

delete from employees
where employeeid=50
returning *;

delete from orders
where orderid=500
returning *;