
----------------------- Orders-SQL-ETL-Analysis-Script-------------------------------



CREATE TABLE [dbo].[df_orders1](
	[order_id] [int] NOT NULL,
	[order_date] [date] NULL,
	[ship_mode] [varchar](20) NULL,
	[segment] [varchar](20) NULL,
	[country] [varchar](20) NULL,
	[city] [varchar](20) NULL,
	[state] [varchar](20) NULL,
	[postal_code] [varchar](20) NULL,
	[region] [varchar](20) NULL,
	[category] [varchar](20) NULL,
	[sub_category] [varchar](20) NULL,
	[product_id] [varchar](50) NULL,
	[quantity] [int] NULL,
	[discount] [decimal](7, 2) NULL,
	[sale_price] [decimal](7, 2) NULL,
	[profit] [decimal](7, 2) NULL)

 select * from df_orders1

  --- Q1--- Find the top 10 highest revenue generating products

  select top 10 product_id, sum(sale_price) as sum_sales
  from df_orders1 
  group by product_id 
  order by sum_sales desc

  --- Q2 --- Find the top 5 highest selling products in each region

  with cte as
  (
  select region,product_id,sum(sale_price) as sum_sales
  from df_orders1 
  group by region,product_id  
  )

  select * from
  (
  select *,
  row_number() over(partition by region order by sum_sales desc) as rn
  from cte) a
  where rn<=5

  --- Q3 Find month over month growth comparision
  --- for 2022 and 2023. eg:- Jan 2022 vs Jan 2023
  
with cte as
(
select year(order_date) as order_year,
       month(order_date) as order_month,
       sum(sale_price) as sales
from df_orders1 
group by  year(order_date),month(order_date)
--order by year(order_date),month(order_date)
)

SELECT
    order_month,
    SUM(CASE WHEN order_year = 2022 THEN sales ELSE 0 END) AS sales_2022,
    SUM(CASE WHEN order_year = 2023 THEN sales ELSE 0 END) AS sales_2023
FROM cte
GROUP BY order_month
ORDER BY order_month;


---- Q4-- For each category which month had highest sales

select * from df_orders1

with cte as
(
select category,format(order_date,'yyyy-MM') as order_year_month,
sum(sale_price) as sales
from df_orders1
group by category,format(order_date,'yyyy-MM')
--order by category,format(order_date,'yyyy-MM') 
)

select * from
(
select *,
row_number() over(partition by category order by sales desc) as rn
from cte) a
where rn=1


---- Q5 Which subcategory had highest growth by profit in 2023  as compared to 2022 ----

with cte as
(
select sub_category,year(order_date) as order_year,
sum(sale_price) as sales
from df_orders1
group by sub_category,year(order_date)
--order by category,format(order_date,'yyyy-MM') 
),

cte2 as
(
select sub_category,
sum(case when order_year=2022 then sales else 0 end) as sales_2022,
sum(case when order_year=2023 then sales else 0 end) as sales_2023
from cte 
group by sub_category )

select top 1*,
(sales_2023-sales_2022)*100/sales_2022 as sales_growth_percentage
from cte2
order by (sales_2023-sales_2022)*100/sales_2022 desc








