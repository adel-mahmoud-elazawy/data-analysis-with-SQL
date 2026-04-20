--select *
--from dbo.[gold.fact_sales]

----------------------------

select new_date,
       total_sales,
sum (total_sales) over (order by new_date ) as runing_sales,
sum (total_sales) over ( partition by year (new_date) order by new_date ) as runing_sales_year

from
(
select datetrunc (month,order_date) as new_date,
      --year ( order_date ) as year,
      --month ( order_date ) as Month,
      sum(sales_amount) as total_sales,
      sum(quantity) as total_quantity,
      count (distinct( customer_key ) ) as count_of_customars
from dbo.[gold.fact_sales]
where order_date is not null
group by datetrunc (month,order_date)

) t
----