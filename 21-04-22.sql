   1 use fs;
    2  select avg(e.sal) as AVERAGE_SAL from emp e where e.deptno in 
    3  (select d.deptno from dept d where location="New York");



    1 use fs;
    2 -- select * from emp;
    3 -- select * from dept;
    4 select e.ename from emp e where hiredate like "1999%" and e.deptno in
    5 (select d.deptno from dept d where dname="Research");
    
    use fs;
    2 -- select * from emp;
    3 -- select * from dept;
    4 select e.ename as "Employee_Name" ,d.ename as "Manager_Name" from emp e
    5 join emp d where e.mgr=d.empno order by e.ename;
    
    
    
    
    names of all the employees who earn atleast 30% of
their department total sal?(this is the example for co- related query)

   1 use fs;
    2 select ename from emp e where sal >=(select sum(e1.sal) 
    3 from emp e1 where e.deptno=e1.deptno)*(0.3);




 use fs;
    2 select ename as Manager_Names from emp e1 where 
    3 ( select count(*) from emp e2 where e1.empno=e2.mgr)>2
    4 order by ename desc;
    
    
    
       1 use fs;
    2 select sum(case when num<0 then num else 0 end) as Negative_Sum,
    3 sum(case when num>=0 then num else 0 end) as Positive_Sum from temp;
    
    
    
8)List the emp names whose sal is greater than his managers(mgr) salary
   --display columns Employee_Name,"Employee_Salary", "Manager_Name", "Manager_Salary"
       1 use fs;
    2 select e1.ename as Employee_Name ,e1.sal as Employee_Salary ,
    3 e2.ename as Manager_Name ,e2.sal as Manager_Salary
    4 from emp e1 join emp e2
    5 on e1.mgr=e2.empno and e1.sal> e2.sal;
   
   
   9)
   
Display the years in ascending order in which more than one employee got hired.
 -- column name should be Year
 
     1 use fs;
    2 select extract(year from e1.hiredate) as Year ,count(*) as Number_of_Employees
    3 from emp e1 
    4 group by extract(year from e1.hiredate ) having count(*) >1 
    5 order by e1.hiredate;
 
 
 
 
 10)
write an sql query to display the Empno, Ename, Sal, Dname whose job is either  'MANAGERS' or 'ANALYST' and working in 'New York' or 'Dallas'  without receiving the Comm
  Note: display the names in ascending order of Location. 
        Column names should be Employee_Number, Employee_Name, Employee_Sal, Department_name
        
        
        use fs;
   13 
   14 select e.empno "Employee_Number",e.ename "Employee_Name",e.sal "Employee_Sal", d.dname "Department_name"
   15 from emp e,dept d where e.deptno=d.deptno and e.comm is NULL and e.job in ("MANAGER","ANALYST")
   16 and d.location in("New York","Dallas")order by d.location;
