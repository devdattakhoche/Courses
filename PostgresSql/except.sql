select country from customers
except
select country from suppliers;

select count(*) from
(select country from customers
except all
select country from suppliers) as same_country;

select city from suppliers
except
select city from customers;
