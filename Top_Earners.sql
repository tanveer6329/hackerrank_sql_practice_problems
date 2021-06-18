

-- SELECT salary * months AS earnings, COUNT(*)
-- FROM Employee
-- GROUP BY earnings
-- ORDER BY earnings DESC
-- LIMIT 1;

select max(salary*months), count(salary*months)
from employee 
where salary*months in (select max(salary*months) from employee);