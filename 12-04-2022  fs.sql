-- Display the  details of employees who joined before 1996.
--  Note: display empno and hiredate  
-- display details in increasing order of hiredate  
-- write your query here

use fs;
select empno,hiredate  from emp  where hiredate<'1996-01-01' order by hiredate;








-- Display the employee name's Whose Annual sal ranging from 22,000 and 45,000.
-- (note: ename should be in ascending order)
-- annual salary column name should be Annual_sal

-- write your query here
use fs;
select ename,12*sal as Annual_sal from emp where 
12*sal between 22000 and 45000  order by ename;





    -- Find out Smith work experience(in terms of number of days) in this company
--  Hint: use hiredate to find out experience and column name should be Work_Experience.

-- write your query here
use fs;
select datediff(curdate(),hiredate) as Work_Experience 
from emp where ename="smith" ;





-- display the department details where at least two emps are working
--    note: display  deptno and number of employees in each department
--     column names should be Department_number, Number_of_Employees
--   display result in higest number of employees in group  to lowest number of employees group
use fs;
-- write your query here
use fs;
/*select * from emp;*/
select deptno as Department_number,count(*) as Number_of_Employees 
from emp group by deptno having count(*)>=2
order by count(*) desc ,deptno;






--   display names of top two jobs by employee count
--   Note: Display the output descending order of employee count
--   Note2: columns should be displayed as job, count
use fs;
-- write your sql query here
select job,count(*) as count from emp group by job 
order by count(*) desc,job limit 2;






 /*-- Display the names of employees who are not earning any commision
 -- diplay the names of employees in ascending order
--write an sql query here*/
 
 use fs;

select ename from emp where comm is null or comm=0.00 order by ename ;
