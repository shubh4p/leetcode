# Write your MySQL query statement below
select u.user_id as buyer_id,u.join_date ,count(order_id)  as orders_in_2019    
from Users u
left join Orders o
on u.user_id = o.buyer_id
and o.order_date BETWEEN '2019-01-01' AND '2019-12-31'
group by u.user_id , u.join_date    
order by u.user_id asc ;