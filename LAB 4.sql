--Alter operation
--Part A
--1. Add two more columns City VARCHAR (20) and Pincode INT.
   ALTER TABLE DEPOSIT ADD CITY VARCHAR(20);

--2. Change the size of CNAME column from VARCHAR (50) to VARCHAR (35).
   ALTER TABLE DEPOSIT 
   ALTER COLUMN CNAME VARCHAR (35);

--3. Change the data type DECIMAL to INT in amount Column.
   ALTER TABLE DEPOSIT
   ALTER COLUMN AMOUNT INT;

--4. Rename Column ActNo to ANO.
   sp_rename "DEPOSIT.AMOUNT", "ANO" ;
   
--5. Delete Column City from the DEPOSIT table.
   ALTER TABLE DEPOSIT 
   DROP COLUMN CITY;

--6. Change name of table DEPOSIT to DEPOSIT_DETAIL.
   SP_RENAME "DEPOSIT", DEPOSIT_DETAIL;
   SELECT *FROM DEPOSIT_DETAIL


--Part – B:
--1. Rename Column ADATE to AOPENDATE OF DEPOSIT_DETAIL table.
     SP_RENAME "DEPOSIT_DETAIL.ADATE",AOPENDATE;

--2. Delete Column AOPENDATE from the DEPOSIT_DETAIL table.
    ALTER TABLE DEPOSIT_DETAIL
	DROP COLUMN AOPENDATE;
--3. Rename Column CNAME to CustomerName.
     SP_RENAME "DEPOSIT_DETAIL.CNAME", "CustomerName";

--part c

    CREATE TABLE STUDENT_DETAIL(
      Enrollment_No VARCHAR(20),
	  Name varchar(25),
	  CPI DECIMAL(5,2),
	  Birthdate DATETIME
	);

--1. Add two more columns City VARCHAR (20) (Not null) and Backlog INT (Null).
     ALTER TABLE STUDENT_DETAIL  ADD CITY VARCHAR(20) NOT NULL DEFAULT 'RAJKOT', BACKLOG INT;
	 SELECT *FROM STUDENT_DETAIL;

--2. Change the size of NAME column of student_detail from VARCHAR (25) to VARCHAR (35).
     ALTER TABLE STUDENT_DETAIL
	 ALTER COLUMN NAME VARCHAR(35)
--3. Change the data type DECIMAL to INT in CPI Column.
     ALTER TABLE STUDENT_DETAIL
	 ALTER COLUMN CPI INT
--4. Rename Column Enrollment_No to ENO.
     SP_RENAME "STUDENT_DETAIL.ENROLLMENT_NO", "ENO"
	 SELECT *FROM STUDENT_DETAIL

--5. Delete Column City from the student_detail table.
     ALTER TABLE STUDENT_DETAIL
	 DROP COLUMN CITY
--6. Change name of table student_detail to STUDENT_MASTER
     SP_RENAME "STUDENT_DETAIL", "STUDENT_MASTER"

--DELETE, Truncate, Drop Operation
--Part A
--1. Delete all the records of DEPOSIT_DETAIL table having amount greater than and equals to 4000.
   DELETE FROM DEPOSIT_DETAIL WHERE ANO >=4000;
   SELECT *FROM DEPOSIT_DETAIL;

--2. Delete all the accounts CHANDI BRANCH.
   DELETE FROM DEPOSI_DETAIL WHERE BNAME = CHANDI;
--3. Delete all the accounts having account number (ANO) is greater than 105.
   DELETE FROM DEPOSIT_DETAIL WHERE ANO>105;

--4. Delete all the records of Deposit_Detail table. (Use Truncate)
  TRUNCATE TABLE DEPOSIT_DETAIL;

--5. Remove Deposit_Detail table. (Use Drop)
  DROP TABLE DEPOSI_DETAIL

--Part – B:

 CREATE TABLE EMPLOYEE_MASTER(
    EmpNo INT,
	EmpName Varchar(25),
	JoiningDate Datetime,
	Salary decimal(8,2),
	City varchar(20)
 );

  insert into EMPLOYEE_MASTER VALUES(101, 'Keyur', '1902-01-05', 12000, 'Rajkot')
  insert into EMPLOYEE_MASTER VALUES(102, 'Hardik', '1904-02-15', 14000, 'Ahmedabad')
  insert into EMPLOYEE_MASTER VALUES(103, 'Kajal', '1906-03-14', 15000, 'Baroda')
  insert into EMPLOYEE_MASTER VALUES(104, 'Bhoomi', '1905-06-23', 12500, 'Ahmedabad')
  insert into EMPLOYEE_MASTER VALUES(105, 'Harmit', '1904-02-15', 14000, 'Rajkot')
  insert into EMPLOYEE_MASTER VALUES(106, 'Mitesh', '1901-09-25', 5000, 'Jamnagar')
  insert into EMPLOYEE_MASTER VALUES(107, 'Meera', null, 7000, 'Morbi')
  insert into EMPLOYEE_MASTER VALUES(108, 'Kishan', '1903-02-06', 10000, NULL)
  select *from EMPLOYEE_MASTER;

--From the above given tables perform the following queries (DELETE Operation):
--1. Delete all the records of Employee_MASTER table having salary greater than and equals to 14000.
     DELETE FROM EMPLOYEE_MASTER WHERE Salary >=14000;
--2. Delete all the Employees who belongs to ‘RAJKOT’ city.
     DELETE FROM EMPLOYEE_MASTER WHERE CITY = 'Rajkot';  

--3. Delete all the Employees who joined after 1-1-2007.
     DELETE FROM EMPLOYEE_MASTER WHERE JoiningDate>'2007-01-01';
--4. Delete the records of Employees whose joining date is null and Name is not null.
     DELETE FROM EMPLOYEE_MASTER WHERE JoiningDate IS NULL AND EMPNAME IS NOT NULL;
--5. Delete the records of Employees whose salary is 50% of 20000.
     DELETE FROM EMPLOYEE_MASTER WHERE SALARY = 10000;
--6. Delete the records of Employees whose City Name is not empty.
     DELETE FROM EMPLOYEE_MASTER WHERE City IS NOT NULL;
--7. Delete all the records of Employee_MASTER table. (Use Truncate)
     TRUNCATE TABLE EMPLOYEE_MASTER
--8. Remove Employee_MASTER table. (Use Drop)
     DROP TABLE EMPLOYEE_MASTER;
--Part – C:
--1. Summarize Delete, Truncate and Drop