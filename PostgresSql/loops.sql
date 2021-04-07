create or replace function factorial(x float) returns float as $$
declare
	current_x float := x;
	running_multiplication float := 1;
begin
	loop
		running_multiplication := running_multiplication * current_x;

		current_x := current_x - 1;
		exit when current_x <= 0;
	end loop;

	return running_multiplication;

end;
$$ language plpgsql;

select factorial(13::float);

create or replace function factorial(x float) returns float as $$
declare
	current_x float := x;
	running_multiplication float := 1;
begin
	while current_x > 0 loop
		running_multiplication := running_multiplication * current_x;

		current_x := current_x - 1;
	end loop;

	return running_multiplication;

end;
$$ language plpgsql;