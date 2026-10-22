# Write your MySQL query statement below
select d.name as department,e.name as employee , e.salary as salary from Employee as e 
left join department as d
on e.departmentid = d.id
where (e.departmentId, e.salary) in (select departmentid , max(salary)
from employee
group by departmentid);