create table if not exists practices (
	practiceid integer not null
);

-- insert into practices (practiceid)
-- values (null);

drop table if exists practices;

create table if not exists practices (
practiceid integer not null,
practice_field varchar(50) not null
);

alter table products
alter column unitprice set not null;


-- unique

drop table if exists practices;

create table practices (
	practiceid integer unique,
  fieldname varchar(50) not null
);

insert into practices (practiceid,fieldname)
values (1, 'field1');
insert into practices (practiceid,fieldname)
values (1, 'field2');


drop table if exists pets;

create table pets (
	petid integer unique,
    name varchar(25) not null
);

alter table region
add constraint region_description unique(regiondescription);

alter table shippers
add constraint shippers_companyname unique(companyname);


-- primary key

drop table if exists practices;

create table practices (
	practiceid integer primary key,
fieldname varchar(50) not null
);

insert into practices (practiceid,fieldname)
values (1, null);
insert into practices (practiceid,fieldname)
values (1, 'field1');
insert into practices (practiceid,fieldname)
values (1, 'field2');

drop table if exists pets;

create table pets (
	petid integer primary key,
name varchar(25) not null
);

alter table practices
drop constraint practices_pkey;

alter table practices
add primary key (practiceid);

alter table pets
drop constraint pets_pkey;

alter table pets
add primary key (petid);


--check

drop table if exists practices;

create table practices (
	practiceid integer primary key,
	practicefield varchar(50) not null,
	employeeid integer not null,
	cost integer constraint practices_cost check (cost >= 0 and cost <= 1000),
	foreign key (employeeid) references employees(employeeid)
);

drop table if exists pets;

create table pets (
	petid integer primary key,
	name varchar(25) not null,
	customerid char(5) not null,
	weight integer constraint pets_weight check (weight > 0 and weight < 200),
	foreign key (customerid) references customers(customerid)
);

alter table orders
add constraint orders_freight check (freight > 0);

alter table products
add constraint products_unitprice check (unitprice > 0);


--default

alter table products
alter column reorderlevel set default 5;

alter table products
alter column reorderlevel drop default;

alter table suppliers
alter column homepage set default 'n/a';

alter table suppliers
alter column homepage drop default;
alter table orders
add constraint orders_freight check (freight > 0);

alter table products
add constraint products_unitprice check (unitprice > 0);




-- fails because row already inserted

alter table products
add check ( reorderlevel > 0);

-- all rows must meet the condition
update products
set reorderlevel = 0
where reorderlevel is null or reorderlevel < 0;

alter table products
alter column discontinued set not null;

alter table products
drop constraint products_reorderlevel_check;

alter table products
alter column discontinued drop not null;

alter table order_details
add check (unitprice > 0);

alter table order_details
alter column discount set not null;

alter table order_details
drop constraint order_details_unitprice_check;

alter table order_details
alter column discount drop not null;