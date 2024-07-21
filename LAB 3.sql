--Lab 3 Part-A
--1. Create table Worldcup from cricket with all the columns and data.
--2. Create table T20 from cricket with first two columns with no data.
--3. Create table IPL From Cricket with No Data

create table CRICKET(
   Name VARCHAR(20),
   City VARCHAR(20),
   Age INT
);
insert into CRICKET values('Sachin Tendulkar','Mumbai',30)
insert into CRICKET values('Rahul Dravid','Bombay',35)
insert into CRICKET values('M. S. Dhoni','Jharkhand',31)
insert into CRICKET values('Suresh Raina','Gujarat',30)
select *from CRICKET;

select *into Worldcup from CRICKET;
select *from Worldcup;

select Name,City Into T20 from CRICKET where 1=3;
select *from T20;

select *into IPL from CRICKET WHERE 1=3;
select *from IPL;

--Part B
create table EMPLOYEE(
   Name VARCHAR(20),
   City VARCHAR(20),
   Age INT
);

insert into EMPLOYEE values('Jay Patel','Rajkot',30)
insert into EMPLOYEE values('Rahul Dave','Baroda',35)
insert into EMPLOYEE values('Jeet Patel ','Surat',31)
insert into EMPLOYEE values('Vijay Raval ','Rajkot',30)
select *from EMPLOYEE;

select *into EMPLOYEE_Detail from EMPLOYEE;
select *from EMPLOYEE_Detail;

select Name,City Into EMPLOYEE_Data from EMPLOYEE where 1=3;
select *from EMPLOYEE_Data;

select *into EMPLOYEE_Info from EMPLOYEE WHERE 1=3;
select *from EMPLOYEE_Info;


--PART C
--1. Insert the Data into Employee_info from Employee whose CITY is Rajkot
INSERT INTO EMPLOYEE_Info SELECT *FROM EMPLOYEE WHERE CITY = 'RAJKOT';
SELECT *FROM EMPLOYEE_Info;

--2. Insert the Data into Employee_info from Employee whose age is more than 32.
INSERT INTO EMPLOYEE_Info SELECT *FROM EMPLOYEE WHERE Age>32;
SELECT *FROM EMPLOYEE_Info;
DELETE FROM EMPLOYEE_Info;

--Update Operation
--Part A
--1. Update deposit amount of all customers from 3000 to 5000. (Use Deposit Table)
Update DEPOSIT set AMOUNT=5000 where AMOUNT=3000;

--2. Change branch name of ANIL from VRCE to C.G. ROAD. (Use Borrow Table)
Update BORROW set BNAME='C.G.ROAD' where CNAME = 'ANIL';

--3. Update Account No of SANDIP to 111 & Amount to 5000. (Use Deposit Table)
Update DEPOSIT set ACTNO=111,AMOUNT=5000 where CNAME='SANDIP';

--4. Update amount of KRANTI to 7000. (Use Deposit Table)
Update DEPOSIT set AMOUNT=7000 where CNAME='KRANTI';

--5. Update branch name from ANDHERI to ANDHERI WEST. (Use Branch Table)
Update BRANCH set BNAME='ANDHERI WEST';

--6. Update branch name of MEHUL to NEHRU PALACE. (Use Deposit Table)
Update DEPOSIT set BNAME='NEHRU PALACE' where CNAME = 'MEHUL';

--7. Update deposit amount of all depositors to 5000 whose account no between 103 & 107. (Use Deposit
--Table)
Update DEPOSIT set AMOUNT=5000 where ACTNO BETWEEN 103 AND 107;

--8. Update ADATE of ANIL to 1-4-95. (Use Deposit Table)

Update DEPOSIT set ADATE='1995-4-1' where CNAME = 'ANIL';

--9. Update the amount of MINU to 10000. (Use Deposit Table)
Update DEPOSIT set AMOUNT=10000 where CNAME = 'MINU';

--10. Update deposit amount of PRAMOD to 5000 and ADATE to 1-4-96 (Use Deposit Table)
Update DEPOSIT set AMOUNT=5000, ADATE='1996-4-1' where CNAME = 'PRAMOD';
SELECT *FROM DEPOSIT;

--Part – B:

--1. Give 10% Increment in Loan Amount. (Use Borrow Table)
UPDATE BORROW SET AMOUNT = AMOUNT + AMOUNT*0.1;
SELECT *FROM BORROW;

--2. Customer deposits additional 20% amount to their account, update the same. (Use Deposit Table)
UPDATE DEPOSIT SET AMOUNT = AMOUNT + AMOUNT*0.2;
SELECT *FROM DEPOSIT;

--Part – C:
--1. Update amount of loan no 321 to NULL. (Use Borrow Table)
UPDATE BORROW SET LOANNO=NULL WHERE LOANNO=321;
SELECT *FROM BORROW;

--2. Update branch name of KRANTI to NULL (Use Borrow Table)
UPDATE BORROW SET BNAME=NULL WHERE CNAME='KRANTI';
SELECT *FROM BORROW;
--3. Display the name of borrowers whose amount is NULL. (Use Borrow Table)
SELECT *FROM BORROW WHERE AMOUNT IS NULL;
SELECT *FROM BORROW;
--4. Display the Borrowers whose having branch. (Use Borrow Table)
SELECT *FROM BORROW WHERE BNAME IS NOT NULL;
SELECT *FROM BORROW;

--5. Update the Loan Amount to 5000, Branch to VRCE & Customer Name to Darshan whose loan no is 481.
--(Use Borrow Table)
UPDATE BORROW SET AMOUNT=5000,BNAME='VRCE',CNAME='Darshan' WHERE LOANNO=481;
SELECT *FROM BORROW;
--6. Update the Deposit table and set the date to 01-01-2021 for all the depositor whose amount is less
--than 2000.
UPDATE DEPOSIT SET ADATE='2021-01-01' WHERE AMOUNT<2000;
SELECT *FROM DEPOSIT;
--7. Update the Deposit table and set the date to NULL & Branch name to ‘ANDHERI whose Account No is
--110.
UPDATE DEPOSIT SET ADATE=NULL,BNAME='ANDHERI' WHERE ACTNO=110;
SELECT *FROM DEPOSIT;