create or replace function newest_hire() returns employees as $$
	select *
	from employees
	order by hiredate desc
	limit 1;
$$ language sql;

select newest_hire();

select (newest_hire()).lastname;

select lastname(newest_hire());

create or replace function highest_inventory() returns products as $$

	select * from products
	order by (unitprice*unitsinstock) desc
	limit 1;

$$ language sql;

select (highest_inventory()).productname;
select productname(highest_inventory());