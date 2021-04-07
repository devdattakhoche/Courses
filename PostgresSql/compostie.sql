create type address as (
	street_address 	varchar(50),
	street_address2 varchar(50),
	city			varchar(50),
	state_region	varchar(50),
	country			varchar(50),
	postalcode		varchar(15)
);

create table friends (
	first_name varchar(100),
	last_name varchar(100),
	address	address
);

drop type address cascade;
drop table friends;


create type address as (
	street_address 	varchar(50),
	street_address2 varchar(50),
	city			varchar(50),
	state_region	varchar(50),
	country			varchar(50),
	postalcode		varchar(15)
);

create type full_name as (
	first_name varchar(50),
	middle_name varchar(50),
	last_name varchar(50)
);

create table friends (
	name full_name,
	address	address
);

drop type address cascade;
drop type full_name cascade;
drop table friends;