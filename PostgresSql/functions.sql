drop routine if exists  max_price();

create function max_price() returns real as $$
begin
	return max(unitprice)
	from products;
end;
$$ language plpgsql;

select max_price();

drop routine if exists biggest_order;

create function biggest_order() returns double precision as $$
begin
	return max(amount)
	from
	(select sum(unitprice*quantity) as amount,orderid
	from order_details
	group by orderid) as totals;
end;
$$ language plpgsql;

select biggest_order();