update suppliers
set homepage = ''
where homepage is null;

update customers
set fax = ''
where fax is null;

select companyname,phone,
coalesce(nullif(homepage,''),'need to call')
from suppliers;

select companyname,
coalesce(nullif(fax,''),phone) as confirmation
from customers;