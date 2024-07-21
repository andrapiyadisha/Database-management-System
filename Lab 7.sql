CREATE TABLE EMP(
EID INT,
EName varchar(20),
Department varchar(20),
Salary int,
JoiningDate datetime,
City varchar(20)
);

INSERT INTO EMP VALUES (101, 'Rahul', 'Admin', 56000, '1-Jan-90', 'Rajkot')
INSERT INTO EMP VALUES (102, 'Hardik', 'IT', 18000, '25-Sep-90', 'Ahmedabad')
INSERT INTO EMP VALUES (103, 'Bhavin', 'HR', 25000, '14-May-91', 'Baroda')
INSERT INTO EMP VALUES (104, 'Bhoomi', 'Admin', 39000, '8-Feb-91', 'Rajkot')
INSERT INTO EMP VALUES (105, 'Rohit', 'IT', 17000, '23-Jul-90', 'Jamnagar')
INSERT INTO EMP VALUES (106, 'Priya', 'IT', 9000, '18-Oct-90 ', 'Ahmedabad')
INSERT INTO EMP VALUES (107, 'Bhoomi', 'HR', 34000, '25-Dec-91', 'Rajkot')
select *from emp;
delete from emp;


--Lab 7
--Part A


--1. Display the Highest, Lowest, Label the columns Maximum, Minimum respectively.
select max(salary) as Maximum, min(salary) as Minimum from emp;

--2. Display Total, and Average salary of all employees. Label the columns Total_Sal and Average_Sal,
--respectively.
select sum(salary) as Total_Sal, avg(salary) as Average_Sal from emp;

--3. Find total number of employees of EMPLOYEE table.
select count(Ename) from EMP;

--4. Find highest salary from Rajkot city.
select max(salary) from emp where city = 'Rajkot';


--5. Give maximum salary from IT department.
select max(salary) from emp where Department = 'IT';


--6. Count employee whose joining date is after 8-feb-91.
select count(EName) from emp where JoiningDate > '8-feb-91';

--7. Display average salary of Admin department.
select avg(salary) from emp where Department = 'Admin';

--8. Display total salary of HR department.
select sum(salary) from emp where Department = 'HR';


--9. Count total number of cities of employee without duplication.
select count(Distinct city) from emp;

--10. Count unique departments.
select count(Distinct Department) from emp;


--11. Give minimum salary of employee who belongs to Ahmedabad.
select min(salary) from emp where city = 'Ahmedabad';

--12. Find city wise highest salary.
Select city, max(salary) from emp group by City;

--13. Find department wise lowest salary.
Select Department, min(salary) from emp group by Department;


--14. Display city with the total number of employees belonging to each city.
Select city, count(Ename) from emp group by City;


--15. Give total salary of each department of EMP table.
Select Department, count(salary) from emp group by Department;


--16. Give average salary of each department of EMP table without displaying the respective department
--name.
Select avg(salary) from emp group by Department;


--Part – B:
--1. Count the number of employees living in Rajkot.
select count(EName) from emp where city='Rajkot';

--2. Display the difference between the highest and lowest salaries. Label the column DIFFERENCE.
select max(salary) - min(salary) as DIFFERENCE from EMP;

--3. Display the total number of employees hired before 1st January, 1991.
select count(EName) from emp where JoiningDate < '1-Jan-91';


--Part – C:
--1. Count the number of employees living in Rajkot or Baroda.
select count(EName) from emp where City = 'Rajkot' or City= 'Baroda';


--2. Display the total number of employees hired before 1st January, 1991 in IT department.
select count(EName) from emp where JoiningDate < '1-Jan-91' and Department= 'it';

--3. Find the Joining Date wise Total Salaries.
select joiningDate, sum(salary) from emp group by JoiningDate;

--4. Find the Maximum salary department & city wise in which city name starts with ‘R’.select city, department, max(salary) from emp where city like 'R%' group by city, department;--extara--find the max salary of employee in each departmentselect ename, department ,(max salary) from empwhere salary in (select max(salary) from emp group by Department);group by Ename, Department;--Calculate the average salary for each cityselect city, avg(salary) from emp group by city--find the second hihest salary   select max(salary) as Max_salary from emp   where Salary<(select max(Salary) from emp);   --find emp who join in the first half of any year  select Ename from emp where MONTH(JoiningDate)<6;--dispaly the name and salary of the emp who join lastselect top 1 Ename , Salary from emporder by JoiningDate desc;