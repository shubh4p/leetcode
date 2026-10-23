# Write your MySQL query statement below
SELECT P.PRODUCT_NAME AS product_name, S.YEAR as year, S.PRICE as price
from sales S join product P
ON s.product_id = p.product_id
;