--should give error
insert into orders
(customerid, employeeid, orderdate, requireddate, shipvia,
 freight, shipname, shipaddress, shipcity, shippostalcode,shipcountry)
values ('vinet', 4, '2017-09-16','2017-09-30',3,
        42.5, 'vins et alcools chevalier',
        '59 rue de l''abbaye', 'reims','51100', 'france');
		


select max(orderid)
from orders;

insert into orders
(orderid,customerid, employeeid, orderdate, requireddate, shipvia,
 freight, shipname, shipaddress, shipcity, shippostalcode,shipcountry)
values (11078, 'vinet', 4, '2017-09-16','2017-09-30',3,
        42.5, 'vins et alcools chevalier','59 rue de labbaye reims','51100', 'france');

select * from products where productname='queso cabrales' productid=11;

insert into order_details
(orderid, productid, unitprice,quantity,discount)
values (11078,11,14,20,0);