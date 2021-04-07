select customerid,coalesce(shipregion,'n/a') from orders;

select companyname,coalesce(homepage,'call to find') from suppliers;