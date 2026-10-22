# Write your MySQL query statement below
Select e.name as Employee from employee e
join employee m on m.id = e.managerId
where e.salary > m.salary 


