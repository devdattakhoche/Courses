select * from
(select orders.orderid, productid, unitprice, quantity,
 	rank() over (partition by order_details.orderid order by (quantity*unitprice) desc) as rank_amount
from orders
natural join order_details) as ranked
where rank_amount <=2;

select companyname,productname,unitprice from
(select companyname,productname,unitprice,
rank() over (partition by products.supplierid order by unitprice asc) as price_rank
from suppliers
natural join products) as ranked_products
where price_rank <=3;