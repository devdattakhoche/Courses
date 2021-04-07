 create or replace function sum_n_product (x int, y int, out sum int, out product int) as $$
begin
	sum := x + y;
	product := x * y;
	return;
end;
$$ language plpgsql;

select sum_n_product(5, 20);
select (sum_n_product(5, 20)).*;

create or replace function square_n_cube
	(in x int, out square int, out cube int) as $$
begin
	square := x*x;
	cube := x*x*x;
	return;

end;
$$ language plpgsql;

select (square_n_cube(55)).*;