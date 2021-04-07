update orders
set requireddate='2017-09-20',freight=50
where orderid=11078;

update order_details
set quantity=40,discount=.05
where orderid=11078 and productid=11;