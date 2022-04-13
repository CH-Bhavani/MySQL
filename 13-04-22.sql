
--q1

 use fs;
 select ename from emp where comm>sal order by ename desc;
 
 
 
 
 --q2
 
     use fs;
     select sal as Salary,ename as Employee_Name from emp where ename like "k%n" order by sal;
     
     
--q3




   1 use fs;
    2 select ename  from emp where job="clerk"  and deptno=20  order by ename ;
    
    
    
  -q4
  
  
      1 use fs;
    2 select max(sal) as Second_Maximum from emp where sal not in (select max(sal) from emp);
    
    
    
    
    
    --q5
    
    
       1 use fs;
    2 select ename from emp where sal = (select max(sal) from emp 
    3 where sal not in (select max(sal) from emp)) order by ename;
    
    
    
    --q6
    
    
    use fs;
    2 select ename from emp where sal>(select sal from emp where ename="blake") order by ename desc;
    
    
    
    
    --q7
    
    
      10 use fs;
   13 select distinct(e.ename) from emp e,dept d where e.deptno in 
   14 (select d.deptno from dept d where dname="research") order by e.ename ;
   
   
   
   
   --q8
   
       1 use fs;
    2 select e.ename from emp e where e.deptno in 
    3 (select d.deptno from dept d where d.location="boston") order by e.ename;
    
    
    
    
    
    
    --q9
    
    
    
        1 use fs;
    2 
    3 select e.ename from emp e where  hiredate like "1999%"  and 
    4 e.deptno in (select d.deptno from dept d where d.dname="research" ) order by ename desc;
    
    
    
    
    
