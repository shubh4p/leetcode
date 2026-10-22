# Write your MySQL query statement below
SELECT c.NAME as Customers FROM Customers as c
left JOIN orders as o
on c.id = o.customerId
where o.customerId is null;