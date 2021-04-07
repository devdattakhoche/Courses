create view customer_order_details as
select companyname, orders.customerid, employeeid, orderdate, requireddate, shippeddate
shipvia, freight, shipname, shipaddress, shipcity, shipregion, shippostalcode, shipcountry,
order_details.*
from customers
join orders on customers.customerid=orders.customerid
join order_details on order_details.orderid=orders.orderid;

select *
from customer_order_details
where customerid='tomsp';

create view supplier_order_details as
select companyname, suppliers.supplierid, products.productid, productname,
order_details.unitprice, quantity, discount, orders.*
from suppliers
join products on suppliers.supplierid=products.supplierid
join order_details on order_details.productid=products.productid
join orders on order_details.orderid=orders.orderid;

select *  from supplier_order_details where supplierid=5;



-- modifications


create or replace view customer_order_details as
select companyname, orders.customerid,employeeid,requireddate,shippeddate,
shipvia,freight,shipname,shipcity,shipregion,shippostalcode,shipcountry,
order_details.*,contactname
from customers
join orders on customers.customerid=orders.customerid
join order_details on order_details.orderid=orders.orderid;

create or replace view supplier_order_details as
select companyname,suppliers.supplierid,
products.productid,productname,
order_details.unitprice,quantity,discount,
orders.*,phone
from suppliers
join products on suppliers.supplierid=products.supplierid
join order_details on order_details.productid=products.productid
join orders on order_details.orderid=orders.orderid;

alter view customer_order_details rename to customer_order_detailed;

alter view supplier_order_details rename to supplier_orders;sales


-- with 

insert into north_america_customers
(customerid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax)
values ('cfdcm','catfish dot com','will bunker','president','old country road','lake village','ar','71653','germany','555-555-5555',null);

select from north_america_customers
where customerid=’cfdcm’;

create or replace view north_america_customers  as
select *
from customers
where country in ('usa','canada','mexico')
with local check option;

insert into north_america_customers
(customerid,companyname,contactname,contacttitle,address,city,region,postalcode,country,phone,fax)
values ('cfdcm','catfish dot com','will bunker','president','old country road','lake village','ar','71653','germany','555-555-5555',null);

create or replace view protein_products as
select * from products
where categoryid in (4,6,8)
with local check option;

insert into protein_products
(productid,productname,supplierid,categoryid,discontinued)
values (78,'tasty tea',12,1,0);


-- dropping views
drop view if exists customer_order_detailed;

drop view if exists supplier_orders;