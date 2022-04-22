use fs;
select d.dname from emp e right join dept d on d.deptno=e.deptno where e.ename is null order by dname desc;








use fs;
select ename from emp where ename rlike "^[a]"  or 
ename rlike "[c-k]$" order by ename;




use fs;
select sum(sal) as Total_sal from emp where ename  <> "allen" and deptno=10;
