# Write your MySQL query statement below
SELECT a.product_id , a.year as first_year , a.quantity , a.price 
from Sales a 
join (SELECT product_id,MIN(YEAR) AS first_year
from Sales 
group by product_id) b
on a.product_id = b.product_id
and a.year = b.first_year