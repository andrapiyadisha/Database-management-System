CREATE TABLE City (
    CityID INT PRIMARY KEY,
    Name VARCHAR(100) UNIQUE,
    Pincode INT NOT NULL,
    Remarks VARCHAR(255)
);

CREATE TABLE Village (
    VID INT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    CityID INT,
    FOREIGN KEY (CityID) REFERENCES City(CityID)
);

INSERT INTO City (CityID, Name, Pincode, Remarks) VALUES
(1, 'Rajkot', 360005, 'Good'),
(2, 'Surat', 335009, 'Very Good'),
(3, 'Baroda', 390001, 'Awesome'),
(4, 'Jamnagar', 361003, 'Smart'),
(5, 'Junagadh', 362229, 'Historic'),
(6, 'Morvi', 363641, 'Ceramic');
select *from City;
select *from Village;


INSERT INTO Village (VID, Name, CityID) VALUES
(101, 'Raiya', 1),
(102, 'Madhapar', 1),
(103, 'Dodka', 3),
(104, 'Falla', 4),
(105, 'Bhesan', 5),
(106, 'Dhoraji', 5);

--1. Display all the villages of Rajkot city.
 select v.Name, c.Name from Village v join City c on v.CityID = c.CityID where c.Name = 'Rajkot';

--2. Display city along with their villages & pin code.
 select v.Name, c.Name, c.Pincode from Village v join City c on v.CityID = c.CityID;

--3. Display the city having more than one village.
 select  c.Name, count(v.Name) from Village v join City c on v.CityID = c.CityID group by c.Name having count(v.Name) > 2;
 
--4. Display the city having no village.
 select v.Name, c.Name from Village v join City c
 on v.CityID = c.CityID 
 where v.Name is null;
 

--5. Count the total number of villages in each city.
  select c.Name, count(v.Name) from Village v join City c
  on v.CityID = c.CityID
  group by c.Name;

--6. Count the number of cities having more than one village.
 select count(*) from City
 where Name in (select City.Name from city left join Village on city.CityID = Village.CityID 
 group by City.Name
 having count(village.Name) > 1);


 CREATE TABLE STU_MASTER (
    Rno INT PRIMARY KEY,
    Name VARCHAR(100),
    Branch VARCHAR(5) DEFAULT 'GENERAL',
    SPI DECIMAL(8,2) CHECK(SPI<=10),
	Bklog INT CHECK(Bklog>0)
);

INSERT INTO STU_MASTER(Rno, Name, Branch, SPI, Bklog) VALUES
(101, 'Raju', 'CE', 8.80, 1),
(102, 'Amit', 'CE', 2.20, 3),
(106, 'Mahesh', DEFAULT , 4.50, 3);
select *from STU_MASTER;

--4. Try to update SPI of Raju from 8.80 to 12.
 UPDATE STU_MASTER SET SPI = 12 WHERE NAME = 'Raju';

--5. Try to update Bklog of Neha from 0 to -1.
 UPDATE STU_MASTER SET Bklog = -1 WHERE NAME = 'Amit';


 ---------------------- PART B -------------------------

--Create table as per following schema with proper validation and try to insert data which violate your validation.
--Emp(Eid, Ename, Did, Cid, Salary, Experience)
--Dept(Did, Dname)
--City(Cid, Cname)

CREATE TABLE Dept_DETAILS (
    Did INT PRIMARY KEY,
    Dname VARCHAR(100) NOT NULL
);

CREATE TABLE City_DETAILS(
    Cid INT PRIMARY KEY,
    Cname VARCHAR(100) NOT NULL
);

CREATE TABLE Emp_DETAILS (
    Eid INT PRIMARY KEY,
    Ename VARCHAR(100) NOT NULL,
    Did INT,
    Cid INT,
    Salary DECIMAL(10, 2) CHECK (Salary > 0),
    Experience INT CHECK (Experience >= 0), 
    FOREIGN KEY (Did) REFERENCES Dept_DETAILS(Did),
    FOREIGN KEY (Cid) REFERENCES City_DETAILS(Cid)
);

INSERT INTO Dept_DETAILS(Did, Dname) VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Marketing');

INSERT INTO City_DETAILS(Cid, Cname) VALUES
(1, 'New York'),
(2, 'Los Angeles'),
(3, 'Chicago');

INSERT INTO Emp_DETAILS(Eid, Ename, Did, Cid, Salary, Experience) VALUES
(1, 'John Doe', 1, 1, 50000.00, 5),
(2, 'Jane Smith', 2, 2, 75000.00, 8),
(3, 'Mike Johnson', 3, 3, 60000.00, 3);


----------------------- PART C -----------------------

--Create table as per following schema with proper validation and try to insert data which violate your validation.
--1.	Emp(Eid, Ename, Did, Cid, Salary, Experience)
--		Dept(Did, Dname)
--		City(Cid, Cname, Did))
--		District(Did, Dname, Sid)
--		State(Sid, Sname, Cid)
--		Country(Cid, Cname)


CREATE TABLE Country_INFO (
    Cid INT PRIMARY KEY,
    Cname VARCHAR(100) NOT NULL
);

CREATE TABLE State_INFO (
    Sid INT PRIMARY KEY,
    Sname VARCHAR(100) NOT NULL,
    Cid INT,
    FOREIGN KEY (Cid) REFERENCES Country_INFO(Cid)
);

CREATE TABLE District_INFO (
    Did INT PRIMARY KEY,
    Dname VARCHAR(100) NOT NULL,
    Sid INT,
    FOREIGN KEY (Sid) REFERENCES State_INFO(Sid)
);

CREATE TABLE Dept_INFO (
    Did INT PRIMARY KEY,
    Dname VARCHAR(100) NOT NULL
);

CREATE TABLE City_INFO (
    Cid INT PRIMARY KEY,
    Cname VARCHAR(100) NOT NULL,
    Did INT,
    FOREIGN KEY (Did) REFERENCES District_INFO(Did)
);

CREATE TABLE Emp_INFO (
    Eid INT PRIMARY KEY,
    Ename VARCHAR(100) NOT NULL,
    Did INT,
    Cid INT,
    Salary DECIMAL(10, 2) CHECK (Salary > 0), -- Salary must be positive
    Experience INT CHECK (Experience >= 0),  -- Experience cannot be negative
    FOREIGN KEY (Did) REFERENCES Dept_INFO(Did),
    FOREIGN KEY (Cid) REFERENCES City_INFO(Cid)
);

INSERT INTO Country_INFO (Cid, Cname) VALUES
(1, 'USA'),
(2, 'Canada'),
(3, 'UK'),
(4, 'Australia'),
(5, 'India');
select *from Country_INFO;

INSERT INTO State_INFO (Sid, Sname, Cid) VALUES
(1, 'California', 1),
(2, 'Ontario', 2),
(3, 'London', 3),
(4, 'New South Wales', 4),
(5, 'Gujarat', 5);
select *from State_INFO;

INSERT INTO District_INFO (Did, Dname, Sid) VALUES
(1, 'Los Angeles', 1),
(2, 'Toronto', 2),
(3, 'Westminster', 3),
(4, 'Sydney', 4),
(5, 'Ahmedabad', 5);
select *from District_INFO;

INSERT INTO Dept_INFO (Did, Dname) VALUES
(1, 'HR'),
(2, 'Engineering'),
(3, 'Marketing'),
(4, 'Sales'),
(5, 'Finance');
select *from Dept_INFO;

INSERT INTO City_INFO (Cid, Cname, Did) VALUES
(1, 'Los Angeles City', 1),
(2, 'Toronto City', 2),
(3, 'London City', 3),
(4, 'Sydney City', 4),
(5, 'Ahmedabad City', 5);
select *from City_INFO;

INSERT INTO Emp_INFO (Eid, Ename, Did, Cid, Salary, Experience) VALUES
(1, 'John Doe', 1, 1, 50000.00, 5),
(2, 'Jane Smith', 2, 2, 75000.00, 8),
(3, 'Mike Johnson', 3, 3, 60000.00, 3),
(4, 'Alice Brown', 4, 4, 45000.00, 2),
(5, 'Bob Green', 5, 5, 40000.00, 4);
select *from Emp_INFO;

--3. Display employeename, departmentname, Salary, Experience, City, District, State and country of all employees.
  SELECT 
    e.Ename, 
    d.Dname, 
    e.Salary, 
    e.Experience, 
    c.Cname AS City, 
    di.Dname AS District, 
    si.Sname AS State, 
    co.Cname AS Country
FROM 
    Emp_INFO e
JOIN 
    Dept_INFO d ON e.Did = d.Did
JOIN 
    City_INFO c ON e.Cid = c.Cid
JOIN 
    District_INFO di ON c.Did = di.Did
JOIN 
    State_INFO si ON di.Sid = si.Sid
JOIN 
    Country_INFO co ON si.Cid = co.Cid


