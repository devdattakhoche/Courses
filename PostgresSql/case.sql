select companyname,country,
case when country in ('austria','germany','poland','france','sweden','italy','spain',
             'uk','ireland','belgium','finland','norway','portugal','switzerland') then 'europe'
             when country in ('canada','mexico','usa') then 'north america'
             when country in ('argentina','brazil','venezuela') then 'south america'
             else country
end as continent
from customers;

select productname,unitprice,
case when unitprice<10 then 'inexpensive'
     when unitprice>=10 and unitprice<=50 then 'mid-range'
	 when unitprice > 50 then 'premium'
end as quality
from products;

select companyname,city,
case city when 'new orleans' then 'big easy'
                   when 'paris' then 'city of lights'
	         else 'needs nickname'
end as nickname
from suppliers;

select orderid,customerid,
case date_part('year', orderdate)
	when 1996 then 'year1'
	when 1997 then 'year2'
	when 1998 then 'year3'
end
from orders;