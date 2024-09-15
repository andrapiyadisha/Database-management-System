--Lab 12

CREATE TABLE Dept (
    DepartmentID INT PRIMARY KEY,
    DepartmentName VARCHAR(100) NOT NULL UNIQUE,
    DepartmentCode VARCHAR(50) NOT NULL UNIQUE,
    Location VARCHAR(50) NOT NULL
);

CREATE TABLE Person (
    PersonID INT PRIMARY KEY,
    PersonName VARCHAR(100) NOT NULL,
    DepartmentID INT NULL,
    Salary DECIMAL(8, 2) NOT NULL,
    JoiningDate DATETIME NOT NULL,
    City VARCHAR(100) NOT NULL,
    FOREIGN KEY (DepartmentID) REFERENCES Dept(DepartmentID)
);

INSERT INTO Dept (DepartmentID, DepartmentName, DepartmentCode, Location) VALUES
(1, 'Admin', 'Adm', 'A-Block'),
(2, 'Computer', 'CE', 'C-Block'),
(3, 'Civil', 'CI', 'G-Block'),
(4, 'Electrical', 'EE', 'E-Block'),
(5, 'Mechanical', 'ME', 'B-Block');
select *from Dept;

INSERT INTO Person (PersonID, PersonName, DepartmentID, Salary, JoiningDate, City) VALUES
(101, 'Rahul Tripathi', 2, 56000, '2000-01-01', 'Rajkot'),
(102, 'Hardik Pandya', 3, 18000, '2001-09-25', 'Ahmedabad'),
(103, 'Bhavin Kanani', 4, 25000, '2000-05-14', 'Baroda'),
(104, 'Bhoomi Vaishnav', 1, 39000, '2005-02-08', 'Rajkot'),
(105, 'Rohit Topiya', 2, 17000, '2001-07-23', 'Jamnagar'),
(106, 'Priya Menpara', NULL, 9000, '2000-10-18', 'Ahmedabad'),
(107, 'Neha Sharma', 2, 34000, '2002-12-25', 'Rajkot'),
(108, 'Nayan Goswami', 3, 25000, '2001-07-01', 'Rajkot'),
(109, 'Mehul Bhundiya', 4, 13500, '2005-01-09', 'Baroda'),
(110, 'Mohit Maru', 5, 14000, '2000-05-25', 'Jamnagar');
select *from Person; 




--Part – A:
--1. Find all persons with their department name & code.
 select P.PersonName, D.DepartmentName, D.DepartmentCode
 from Person p join Dept D on P.DepartmentID = D.DepartmentID;

--2. Find the person's name whose department is in C-Block.
 select P.PersonName, D.DepartmentName, D.Location
 from Person p join Dept D on P.DepartmentID = D.DepartmentID
 where D.Location = 'C-Block';

--3. Retrieve person name, salary & department name who belongs to Jamnagar city.
 select P.PersonName, D.DepartmentName, P.City, P.Salary
 from Person p join Dept D on P.DepartmentID = D.DepartmentID
 where P.City = 'Jamnagar';

--4. Retrieve person name, salary & department name who does not belong to Rajkot city.
 select P.PersonName, D.DepartmentName, P.City, P.Salary
 from Person p join Dept D on P.DepartmentID = D.DepartmentID
 where P.City != 'Rajkot';

--5. Retrieve person’s name of the person who joined the Civil department after 1-Aug-2001.
 select P.PersonName, D.DepartmentName, P.JoiningDate
 from Person p join Dept D on P.DepartmentID = D.DepartmentID
 where D.DepartmentName = 'Civil' and P.JoiningDate > '2001-08-01';

--6. Find details of all persons who belong to the computer department.
 select *from Person p join Dept D on P.DepartmentID = D.DepartmentID
 where D.DepartmentName= 'Computer';

--7. Display all the person's name with the department whose joining date difference with the current date
--is more than 365 days.
 select P.PersonName, D.DepartmentName, P.JoiningDate
 from Person p join Dept D on P.DepartmentID = D.DepartmentID
 where P.JoiningDate < GETDATE()-365;

--8. Find department wise person counts.
 select D.DepartmentName, count(P.PersonId) 
 from Person p join Dept D on P.DepartmentID = D.DepartmentID
 Group by D.DepartmentName;

--9. Give department wise maximum & minimum salary with department name.
 select D.DepartmentName, min(P.Salary) as MIN_SALARY, max(P.Salary) as Max_Salary 
 from Person p join Dept D on P.DepartmentID = D.DepartmentID
 Group by D.DepartmentName;
--10. Find city wise total, average, maximum and minimum salary.
 select city, min(Salary) as MIN_SALARY, max(Salary) as Max_Salary ,avg(Salary) as AVG_SALARY, sum(Salary) as TOTAL_Salary 
 from Person
 Group by city;

--11. Find the average salary of a person who belongs to Ahmedabad city.
 select PersonName ,city, avg(Salary) as AVG_SALARY 
 from Person
 where city = 'Ahmedabad';
--12. Produce Output Like: <PersonName> lives in <City> and works in <DepartmentName> Department. (In
--single column)select P.PersonName + 'lives in' + P.City + 'and works in' + D.DepartmentName + 'Department'from Person P join Dept D on P.DepartmentID = D.DepartmentID;