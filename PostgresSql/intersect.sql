select country from customers
intersect select country from suppliers;

select count(*) from
(select country from customers
intersect all select country from suppliers) as same_country;

select city from customers
intersect select city from suppliers;

select count(*) from (select city from customers intersect select city from suppliers ) 
as same_city;