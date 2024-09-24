-------------------- LAB 9 --------------------------------------------------------------



--Sub Queries--
CREATE TABLE Stu_Detail(
    Rno INT,
    Name VARCHAR(50),
    City VARCHAR(50),
    DID INT,
);

INSERT INTO Stu_Detail (Rno, Name, City, DID) VALUES
(101, 'Raju', 'Rajkot', 10),
(102, 'Amit', 'Ahmedabad', 20),
(103, 'Sanjay', 'Baroda', 40),
(104, 'Neha', 'Rajkot', 20),
(105, 'Meera', 'Ahmedabad', 30),
(106, 'Mahesh', 'Baroda', 10);
select *from Stu_Detail;

CREATE TABLE Academic (
    Rno INT,
    SPI DECIMAL(3, 1),
    Bklog INT
);

INSERT INTO Academic (Rno, SPI, Bklog) VALUES
(101, 8.8, 0),
(102, 9.2, 2),
(103, 7.6, 1),
(104, 8.2, 4),
(105, 7.0, 2),
(106, 8.9, 3);
select *from Academic;


CREATE TABLE Department (
    DID INT,
    DName VARCHAR(50)
);

INSERT INTO Department (DID, DName) VALUES
(10, 'Computer'),
(20, 'Electrical'),
(30, 'Mechanical'),
(40, 'Civil');
select *from Department;

--Part – A:


--1. Display details of students who are from computer department.
 select Name from Stu_Detail where DID =(SELECT DID from Department WHERE DName = 'Computer');

--2. Displays name of students whose SPI is more than 8.
 select Name from Stu_Detail where Rno IN (SELECT Rno from Academic WHERE SPI > 8);

--3. Display details of students of computer department who belongs to Rajkot city.
 select Name from Stu_Detail where DID =(SELECT DID from Department WHERE DName = 'Computer' AND City = 'Rajkot');

--4. Find total number of students of electrical department.
 select count(Name)	 from Stu_Detail where DID =(SELECT DID from Department WHERE DName = 'Electrical');

--5. Display name of student who is having maximum SPI.
 select Name from Stu_Detail where Rno = (SELECT Rno from Academic
 where SPI = (SELECT MAX(SPI) FROM Academic));

--6. Display details of students having more than 1 backlog.
 select Name from Stu_Detail where Rno IN (SELECT Rno from Academic
 where Bklog >1);

--Part – B:
--1. Display name of students who are either from computer department or from mechanical department.
  select Name from Stu_Detail where DID IN (SELECT DID from Department WHERE DName = 'Computer' OR DName = 'Mechanical');

--2. Display name of students who are in same department as 102 studying in.
   select Name from Stu_Detail where DID in (select DID from Stu_Detail where Rno = 102);

--Part – C:
--1. Display name of students whose SPI is more than 9 and who is from electrical department.
	 select Name from Stu_Detail where DID =(SELECT DID from Department WHERE DName = 'Electrical') and Rno IN (SELECT Rno from Academic WHERE SPI > 9);

--2. Display name of student who is having second highest SPI.
    select Name from Stu_Detail where Rno = (select Rno from Academic where SPI = (select max(SPI) from Academic where SPI < (select max(SPI) from Academic)));
--3. Display city names whose students branch wise SPI is 9.2
	SELECT DISTINCT City FROM Stu_Detail WHERE Rno IN (SELECT Rno FROM Academic WHERE SPI = 9.2)AND DID IN (SELECT DID FROM Department);


--SET Operators
--Part – A:

CREATE TABLE Computer (
    RollNo INT,
    Name VARCHAR(50)
);


INSERT INTO Computer (RollNo, Name) VALUES
(101, 'Ajay'),
(109, 'Haresh'),
(115, 'Manish');

CREATE TABLE Electrical (
    RollNo INT PRIMARY KEY,
    Name VARCHAR(50)
);

INSERT INTO Electrical (RollNo, Name) VALUES
(105, 'Ajay'),
(107, 'Mahesh'),
(115, 'Manish');
select *from Computer;
select *from Electrical;

--1. Display name of students who is either in Computer or in Electrical.
	select Name from Computer
	union 
	select Name from Electrical;

--2. Display name of students who is either in Computer or in Electrical including duplicate data.
	select Name from Computer
	union all
	select Name from Electrical;

--3. Display name of students who is in both Computer and Electrical.
	select Name from Computer
	Intersect 
	select Name from Electrical;

--4. Display name of students who are in Computer but not in Electrical.
	select Name from Computer
	except
	select Name from Electrical;

--5. Display name of students who are in Electrical but not in Computer.
	select Name from Electrical
	except 
	select Name from Computer;

--6. Display all the details of students who are either in Computer or in Electrical.
	select *from Computer
	union 
	select *from Electrical;

--7. Display all the details of students who are in both Computer and Electrical.
	select *from Computer
	Intersect 
	select *from Electrical;

------------------ PART B ----------------------



CREATE TABLE Emp_DATA (
    EID INT,
    Name VARCHAR(50)
);

INSERT INTO Emp_DATA (EID, Name) VALUES
(1, 'Ajay'),
(9, 'Haresh'),
(5, 'Manish');

CREATE TABLE Customer (
    CID INT,
    Name VARCHAR(50)
);

INSERT INTO Customer (CID, Name) VALUES
(5, 'Ajay'),
(7, 'Mahesh'),
(5, 'Manish');
select *from Emp_DATA;
select *from Customer;

--1. Display name of persons who is either Employee or Customer.
	select Name from Emp_DATA
	union 
	select Name from Customer;

--2. Display name of persons who is either Employee or Customer including duplicate data.
	select Name from Emp_DATA
	union All
	select Name from Customer;

--3. Display name of persons who is both Employee as well as Customer.
	select Name from Emp_DATA
	Intersect 
	select Name from Customer;

--4. Display name of persons who are Employee but not Customer.
    select Name from Emp_DATA
	except 
	select Name from Customer;

--5. Display name of persons who are Customer but not Employee.
	select Name from Customer
	except 
	select Name from Emp_DATA;


--Part – C:
--1. Perform all the queries of Part-B but display ID and Name columns instead of Name only.

--1. Display name of persons who is either Employee or Customer.
	select *from Emp_DATA
	union 
	select *from Customer;

--2. Display name of persons who is either Employee or Customer including duplicate data.
	select *from Emp_DATA
	union All
	select *from Customer;

--3. Display name of persons who is both Employee as well as Customer.
	select *from Emp_DATA
	Intersect 
	select *from Customer;

--4. Display name of persons who are Employee but not Customer.
    select *from Emp_DATA
	except 
	select *from Customer;

--5. Display name of persons who are Customer but not Employee.
	select *from Customer
	except 
	select *from Emp_DATA;

