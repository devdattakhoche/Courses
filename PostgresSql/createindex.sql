create unique index idx_employees_employeeid
on employees (employeeid);

create index idx_orders_customerid_orderid
on orders (customerid, orderid);