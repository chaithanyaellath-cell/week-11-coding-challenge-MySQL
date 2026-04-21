-- SELECT * FROM emp1db.employee;
-- insert into employee(empno,ename,job,mgr,hiredate,sal,comm,deptno) values
-- (7369,'SMITH','CLERK',7902,'1980-12-17',800,NULL,20),
-- (7499,'ALLEN','SALESMAN',7698,'1981-02-20',1600,300,30),
-- (7521,'WARD','SALESMAN',7698,'1981-02-22',1250,500,30),
-- (7566,'JONES','MANAGER',7839,'1981-04-02',2975,NULL,20),
-- (7654,'MARTIN','SALESMAN',7698,'1981-09-28',1250,1400,30),
-- (7698,'BLAKE','MANAGER',7839,'1981-05-01',2850,NULL,30),
-- (7782,'CLARK','MANAGER',7839,'1981-06-09',2450,NULL,10),
-- (7788,'SCOTT','ANALYST',7566,'1987-04-19',3000,NULL,20),
-- (7839,'KING','PRESIDENT',NULL,'1981-11-17',5000,NULL,10),
-- (7844,'TURNER','SALESMAN',7698,'1981-09-08',1500,0,30),
-- (7876,'ADAMS','CLERK',7788,'1987-05-23',1100,NULL,20),
-- (7900,'JAMES','CLERK',7698,'1981-12-03',950,NULL,30),
-- (7902,'FORD','ANALYST',7566,'1981-12-03',3000,NULL,20),
-- (7934,'MILLER','CLERK',7782,'1982-01-23',1300,NULL,10);
-- SELECT * FROM employee;
-- create table department(deptno int,dname varchar(20),loc varchar(20));
-- insert into department values 
-- (10,'ACCOUNTING','NEWYORK'),
-- (20,'RESEARCH','DALLAS'),
-- (30,'SALES','CHICAGO'),
-- (40,'OPERATIONS','BOSTON');
-- select * from department;
-- create table grade (grade int,losal int,hisal int);
-- insert into grade values 
-- (1,700,1200),
-- (2,1201,1400),
-- (3,1401,2000),
-- (4,2001,3000),
-- (5,3001,9999);
-- select * from grade;

-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////
-- Section 1: Basic SELECT Queries--

-- select empno,ename,sal from employee;
-- select distinct job from employee;
-- select ename,sal*12 as annual_salary from employee;
-- select * from employee where deptno=10;
-- select ename,job from employee where job= 'clerk';
-- select ename from employee where ename like 's%';
-- select ename from employee where ename like '_l%';
-- select ename from employee where ename like '%ar%';
-- select  * from employee where year(hiredate) = 1981;
-- select ename,sal from employee where sal>2500;
-- select * from employee where job<>'manager';
-- select * from employee where comm is not null;
-- select * from employee where mgr is null;
-- select ename from employee where deptno=30 and job='salesman';
-- select ename from employee  
-- where job in ('clerk', 'analyst');
-- select ename from employee where sal between 1000 and 2000;

-- ////////////////////////////////////////////////////////////////////////////////////////////////////////
-- Section 2: Ordering and Grouping--

-- select * from employee order by ename;
-- select * from employee order by deptno,sal desc;
-- select count(*) as total_employees from employee;
-- select sum(sal) as total_salary from employee;
-- select avg(sal) as avg_salary from employee;
-- select MAX(sal) as MAX_SAL, MIN(sal) as MIN_SAL from employee;
-- select deptno,count(*) as emp_count from employee group by deptno;
-- select job,avg(sal) as avg_sal from employee group by job;
-- select deptno, sum(sal) as total_salary from employee group by deptno;
-- select deptno from employee group by deptno having count(*)>3;
-- select job from employee group by job having avg(sal)>2000;

-- ///////////////////////////////////////////////////////////////////////////////////////////////////////////////
-- Section 3: Joins and Subqueries--

-- select e.ename,d.dname from employee e join department d on e.deptno=d.deptno;
-- select e.ename,d.dname,d.loc from employee e join department d on e.deptno=d.deptno;
-- select e.ename as employee ,m.ename as manager from employee e left join employee m on e.mgr = m.empno;
 -- use emp1db;
-- select e.ename,e.sal,g.grade from employee e join grade g on e.sal between g.losal and g.hisal;(
-- select e.ename from employee e join department d on e.deptno=d.deptno
-- where d.loc='New york';
-- select d.dname from employee e join department d on e.deptno=d.deptno
-- where e.ename='Smith';
-- SELECT ENAME FROM EMPLOYEE 
-- WHERE SAL > (SELECT SAL FROM EMPLOYEE WHERE ENAME = 'ALLEN'); 
-- select ename from employee
-- where deptno = (select deptno from employee where ename= 'scott');
-- select ename from employee
-- where job = (select job from employee where ename= 'jones');
-- select mgr from employee
-- group by mgr having count(*)>2;

-- /////////////////////////////////////////////////////////////////////////////////////////////
-- Section 4: Functions (String, Numeric, Date)-- 

-- select lower(ename) from employee;
-- select substring(ename,1,3) from employee;
-- select ename,length(ename) from employee;
-- select round(sal,-3)from employee;
-- select mod(sal,1000) from employee;
-- select current_timestamp;
-- select ename,year (hiredate) from employee;
-- select ename,monthname(hiredate) from employee;
-- select ename,2025-year(hiredate) as years_worked from employee;

-- /////////////////////////////////////////////////////////////////////////////////////////////////////
-- Section 5: DDL and DML-- 

-- create table department (deptno int primary key,dname varchar(20),loc varchar(20));
-- alter table department add pincode int;
-- select * from department;
-- insert into department values (50,'HR','Houston');
update department set loc='atlanta' where dname='sales';
select * from department;
delete from department where dname='operations';
select * from department;

















