begin transaction;
	update products
	set reorderlevel = reorderlevel - 5;

	select count(*)
	from products
	where unitsinstock + unitsonorder < reorderlevel;

end transaction;


begin transaction;
	update orders
	set requireddate = requireddate + interval '1 day'
	where orderdate between '1997-12-01' and '1997-12-31';

	update orders
	set requireddate = requireddate - interval '1 day'
	where orderdate between '1997-11-01' and '1997-11-30';

end transaction;