--LAB 11

--Part – A:

--1. Combine information from student and result table using cross join or Cartesian product.
select *from STU_INFO cross Join Result;

--2. Perform inner join on Student and Result tables.
select *from STU_INFO inner Join Result on STU_INFO.RNo = RESULT.RNo;

--3. Perform the left outer join on Student and Result tables.
select *from STU_INFO left outer Join Result on STU_INFO.RNo = RESULT.RNo;

--4. Perform the right outer join on Student and Result tables.
select *from STU_INFO right outer Join Result on STU_INFO.RNo = RESULT.RNo;

--5. Perform the full outer join on Student and Result tables.
select *from STU_INFO full outer Join Result on STU_INFO.RNo = RESULT.RNo;

--6. Display Rno, Name, Branch and SPI of all students.
select STU_INFO.RNo, STU_INFO.Name,STU_INFO.Branch,RESULT.SPI from STU_INFO left outer Join Result on STU_INFO.RNo = RESULT.RNo;

--7. Display Rno, Name, Branch and SPI of CE branch’s student only.
select STU_INFO.RNo, STU_INFO.Name,STU_INFO.Branch,RESULT.SPI from STU_INFO left outer Join Result on STU_INFO.RNo = RESULT.RNo where STU_INFO.Branch='CE';

--8. Display Rno, Name, Branch and SPI of other than EC branch’s student only.
select STU_INFO.RNo, STU_INFO.Name,STU_INFO.Branch,RESULT.SPI from STU_INFO left outer Join Result on STU_INFO.RNo = RESULT.RNo where STU_INFO.Branch != 'EC';

--9. Display average result of each branch.
select STU_INFO.Branch,avg(RESULT.SPI) from STU_INFO Join Result on STU_INFO.RNo = RESULT.RNo Group by STU_INFO.Branch;

--10. Display average result of CE and ME branch.
select STU_INFO.Branch,avg(RESULT.SPI) as AVG_SPI from STU_INFO Join Result on STU_INFO.RNo = RESULT.RNo Group by STU_INFO.Branch having STU_INFO.Branch ='CE' or STU_INFO.Branch ='ME';

--Part – B:
--1. Display average result of each branch and sort them in ascending order by SPI.
select STU_INFO.Branch,avg(RESULT.SPI) from STU_INFO Join Result on STU_INFO.RNo = RESULT.RNo Group by STU_INFO.Branch order by avg(RESULT.SPI) Asc;

--2. Display highest SPI from each branch and sort them in descending order.
select STU_INFO.Branch,max(RESULT.SPI) from STU_INFO Join Result on STU_INFO.RNo = RESULT.RNo Group by STU_INFO.Branch order by max(RESULT.SPI) DESc;


--Part – C:

select *from EMPLOYEE_MASTER;
--1. Retrieve the names of employee along with their manager’s name from the Employee table.
select A.Name as 'EMP_Name', B.Name as 'Manager_Name' from EMPLOYEE_MASTER A inner join EMPLOYEE_MASTER B on A.EmployeeNo = B.ManagerNo;