triggersalter table employees
add column last_updated timestamp;

create or replace function employees_timestamp() returns trigger as $$
begin

	new.last_updated := now();
	return new;

end;
$$ language plpgsql;

drop trigger if exists employees_timestamp on employees;

create trigger employees_timestamp before insert or update on employees
	for each row execute function employees_timestamp();

select last_updated,*from employees
where employeeid=1;

update employees
set address = '27 west bird lane'
where employeeid=1;

select last_updated from employees
where employeeid=1;

-- product example
alter table products
add column last_updated timestamp;

create or replace function products_timestamp() returns trigger as $$
begin

	new.last_updated := now();
	return new;

end;
$$ language plpgsql;

drop trigger if exists products_timestamp on products;

create trigger products_timestamp before insert or update on products
	for each row execute function products_timestamp();

select last_updated,* from products
where productid=2;

update products
set unitprice=19.05
where productid=2;

select last_updated,* from products
where productid=2;