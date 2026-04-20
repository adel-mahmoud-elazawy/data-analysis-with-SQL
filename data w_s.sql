with new_table as (
    select year(f.order_date) years,
           p.product_name,
           sum(f.sales_amount) as total_sales
    from [dbo].[gold.fact] f  
    left join products p
    on f.product_key = p.product_key
    where f.order_date is not null
    group by year(f.order_date), p.product_name
)
select years,
       product_name,
       total_sales,
       avg (total_sales) over (partition by product_name) as avg_sales,
case 
    when total_sales - avg (total_sales) over (partition by product_name) > 0 then 'above avg'
    when total_sales - avg (total_sales) over (partition by product_name) < 0 then 'below avg'
    when total_sales - avg (total_sales) over (partition by product_name) = 0 then 'in avg'
end sales_status, 
lag(total_sales) over (partition by product_name order by years) yearly_sales,
case 
    when total_sales - lag(total_sales) over (partition by product_name order by years) > 0 then 'increas'
    when total_sales - lag(total_sales) over (partition by product_name order by years) < 0 then 'decrease'
    else 'no change'
end yearly_progress 
from new_table
