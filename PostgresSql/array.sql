drop table if exists friends;


create table friends (
    name full_name,
    address address,
    specialdates dates_to_remember,
    children varchar(50) array
);

drop table if exists salary_employees;

create table salary_employees (
    name text,
    pay_by_quarter integer[4],
	schedule text[][]
)