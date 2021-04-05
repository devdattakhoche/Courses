select * from actor;
select * from film;
select * from staff;

select address,district from address;
select title,description from film;
select city,country_id from city;

select DISTINCT(last_name) from customer;
select DISTINCT(first_name) from actor;
select DISTINCT(inventory_id) from rental;

select COUNT(*) from film;
select COUNT(*) from category;
select COUNT(DISTINCT first_name) from actor;

select rental_id,return_date-rental_date as date from rental;