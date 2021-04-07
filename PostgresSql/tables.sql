create table subscribers (
	firstname varchar(200),
	 lastname varchar(200),
	email varchar(250),
	signup timestamp,
	frequency integer,
	iscustomer boolean
);

create table returns (
	returnrid serial,
	customerid char(5),
	returndate timestamp,
	productid integer,
	quantity smallint,
	orderid integer
);


alter table subscribers
rename firstname to first_name;
alter table returns
rename returndate to return_date;
alter table subscribers
rename to email_subscribers;
alter table returns
rename to bad_orders;


drop table email_subscribers;