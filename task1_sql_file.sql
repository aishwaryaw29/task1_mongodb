--Do 7 sql operation in mongodb

--1)LIKE

select * from sales where order_id like 'CA%'

--2)IN

select * from product where sub_category in ('Chairs','Tables','Art')

--3)ORDERBY, LIMIT

select * from sales where ship_mode = 'Second Class' order by sales desc limit 5

--4)MIN

select product_id, min(sales) as min_sales from sales group by product_id

--5)MAX

select ship_mode, max(quantity) as max_quantity from sales group by ship_mode

--6)UPPER, LOWER

select upper(city) as city_upper, lower(state) as state_lower from customer

--7)POWER

select order_id, quantity, power(quantity, 2) as quantity_squared from sales

