--Lab 6
--Math functions
--Part – A:
--1. Display the result of 5 multiply by 30.
  select 5*30;

--2. Find out the absolute value of -25, 25, -50 and 50.
  select abs(-25),abs(25),abs(50),abs(50);

--3. Find smallest integer value that is greater than or equal to 25.2, 25.7 and -25.2.
  select CEILING(25.2),CEILING(25.7),CEILING(-25.2);

--4. Find largest integer value that is smaller than or equal to 25.2, 25.7 and -25.2.
  select FLOOR(25.2),FLOOR(25.7),FLOOR(-25.2);

--5. Find out remainder of 5 divided 2 and 5 divided by 3.
  select (5%2),(5%3);

--6. Find out value of 3 raised to 2nd power and 4 raised 3rd power.
  select POWER(3,2),POWER(5,3);

--7. Find out the square root of 25, 30 and 50.
  select SQRT(25),SQRT(30),SQRT(50);

--8. Find out the square of 5, 15, and 25.
  select SQUARE(5),SQUARE(15),SQUARE(25);

--9. Find out the value of PI.
  select PI();

--10. Find out round value of 157.732 for 2, 0 and -2 decimal points.
  select ROUND(157.732,2),ROUND(157.732,0),ROUND(157.732,-2);

--11. Find out exponential value of 2 and 3.
  select EXP(2),exp(3);

--12. Find out logarithm having base e of 10 and 2.
  select LOG(10),LOG(2);

--13. Find out logarithm having base b having value 10 of 5 and 100.
  select LOG10(5),LOG10(100);

--14. Find sine, cosine and tangent of 3.1415.
  select SIN(3.1415),COS(3.1415),TAN(3.1415);

--15. Find sign of -25, 0 and 25.
  select SIGN(-25),SIGN(0),SIGN(25);

--16. Generate random number using function.
  select RAND();

--Part - B
  create table EMP_MASTER(
    EmpNo int,
	EmpName Varchar(10),
	JoiningDate Datetime,
	Salary int,
	Commission int,
	City Varchar(10),
	DeptCode Varchar(10),
  );

  insert into EMP_MASTER values(101,'Keyur','2002-01-05',12000,4500,'Rajkot','3@g')
  insert into EMP_MASTER values(102,'Hardik','2004-02-15',14000,2500,'Ahmedabad','3@')
  insert into EMP_MASTER values(103,'Kajal','2006-03-14',15000,3000,'Baroda','3-GD')
  insert into EMP_MASTER values(104,'Bhoomi','2005-06-23',12500,1000,'Ahmedabad','1A3D')
  insert into EMP_MASTER values(105,'Harmit','2004-02-15',14000,2000,'Rajkot','312A')
  select *from EMP_MASTER

--1. Display the result of Salary plus Commission.
  select EmpName, (Salary + Commission) AS result
  from EMP_MASTER;

--2. Find smallest integer value that is greater than or equal to 55.2, 35.7 and -55.2.
    select FLOOR(55.2),FLOOR(35.7),FLOOR(-55.2);


--3. Find largest integer value that is smaller than or equal to 55.2, 35.7 and -55.2.
     select CEILING(55.2),CEILING(35.7),CEILING(-55.2);

--4. Find out remainder of 55 divided 2 and 55 divided by 3.
     select (55%2),(55%3);

--5. Find out value of 23 raised to 2nd power and 14 raised 3rd power.
     select POWER(23,2),POWER(14,3);

--Part – C:
--1. Find out the square root of 36, 49 and 81.
     select SQRT(36),SQRT(49),SQRT(81);

--2. Find out the square of 3, 9, and 12.
     select SQUARE(3),SQUARE(9),SQUARE(12);

--3. Find out round value of 280.8952 for 2, 0 and -2 decimal points.
     select ROUND(280.8952,2),ROUND(280.8952,0),ROUND(280.8952,-2);

--4. Find sine, cosine and tangent of 4.2014.
     select SIN(4.2014),COS(4.2014),TAN(4.2014);

--5. Find sign of -55, 0 and 95.
     select SIGN(-55),SIGN(0),SIGN(95);

--String functions

--Part – A:

--1. Find the length of following. (I) NULL (II) ‘ hello ’ (III) Blank
  select len('null'),len('hello'),len('Blank');
   
--2. Display your name in lower & upper case.
  select LOWER('Disha'),UPPER('Disha');

--3. Display first three characters of your name.
  select SUBSTRING('Disha',1,3);

--4. Display 3rd to 10th character of your name.
  select SUBSTRING('Disha Andrapiya',3,10);	

--5. Write a query to convert ‘abc123efg’ to ‘abcXYZefg’ & ‘abcabcabc’ to ‘ab5ab5ab5’ using REPLACE.
  select REPLACE('abc123efg','123','XYZ'),REPLACE('abcabcabc','c','5');

--6. Write a query to display ASCII code for ‘a’,’A’,’z’,’Z’, 0, 9.
  select ASCII('a'),ASCII('A'),ASCII('z'),ASCII('Z'),ASCII('0'),ASCII('9');

--7. Write a query to display character based on number 97, 65,122,90,48,57.
  select CHAR(97),CHAR(65),CHAR(122),CHAR(90),CHAR(48),CHAR(57); 

--8. Write a query to remove spaces from left of a given string ‘hello world ‘.
  select LTRIM('hello world  ');

--9. Write a query to remove spaces from right of a given string ‘ hello world ‘.
   select RTRIM(' hello world');

--10. Write a query to display first 4 & Last 5 characters of ‘SQL Server’.
  select left('SQL Server',4),right('SQL Server',5);

--11. Write a query to convert a string ‘1234.56’ to number (Use cast and convert function).
  select CAST(1234.56 as int);
  select CONVERT(int,1234.56);

--12. Write a query to convert a float 10.58 to integer (Use cast and convert function).
  select CAST(10.58 as int);
  select CONVERT(int,10.58);

--13. Put 10 space before your name using function.
  select SPACE(10) + 'Disha';

--14. Combine two strings using + sign as well as CONCAT ().
  select CONCAT_ws(' ','Disha','Andrapiya');
  select 'Disha'+ ' '+'Andrapiya';

--15. Find reverse of “Darshan”.
  select REVERSE('Darshan');

--16. Repeat your name 3 times.
  select REPLICATE('Disha ',3);

--Part – B: Perform following queries on Student table of practical no 5.

--1. Find the length of FirstName and LastName columns.
    select StulID,LEN(FirstName),LEN(LastName) from STUDENT;

--2. Display FirstName and LastName columns in lower & upper case.
    select LOWER(FirstName),LOWER(LastName),UPPER(FirstName),UPPER(LastName) from STUDENT;

--3. Display first three characters of FirstName column.
    select SUBSTRING(FirstName,1,3) from STUDENT;

--4. Display 3rd to 10th character of Website column.
    select SUBSTRING(Website,3,10) from STUDENT;	
 
--5. Write a query to display first 4 & Last 5 characters of Website column.
    select left(Website,4),right(Website,5) from STUDENT;
  

--Part – C: Perform following queries on Student table of practical no 5.
--1. Put 10 space before FirstName using function.
  select SPACE(10) + FirstName from STUDENT;

--2. Combine FirstName and LastName columns using + sign as well as CONCAT ().
  select CONCAT_ws(' ',FirstName,LastName) from STUDENT;
  select FirstName+ ' '+LastName from STUDENT; 

--3. Combine all columns using + sign as well as CONCAT ().
  select CONCAT_ws(' ',FirstName,LastName,Website,City,Address) from STUDENT;
  select FirstName+ ' '+LastName+' '+Website+' '+City+' '+' '+Address from STUDENT; 

--4. Find reverse of FirstName column.
  select REVERSE(FirstName) from STUDENT;

--5. Repeat FirstName column 3 times
  select REPLICATE(FirstName,3) from STUDENT;   

--6. Give the Names which contains 5 characters.
  select *from STUDENT where FirstName like '_____'

--7. Combine the result as <FirstName> Lives in <City>.
  select FirstName +' Lives in '+ City from STUDENT;

--8. Combine the result as Student_ID of < FirstName > is <StuID> .
  SELECT CONCAT('Student_ID of ', FirstName, ' is ', StulID) AS StudentInfo
  FROM STUDENT;


--Date Functions

--Part – A:

--1. Write a query to display the current date & time. Label the column Today_Date.
   select GETDATE() AS Today_Date;

--2. Write a query to find new date after 365 day with reference to today.
  select DATEADD(DD,365,GETDATE());

--3. Display the current date in a format that appears as may 5 1994 12:00AM.
   select FORMAT(GETDATE(), 'MMM dd yyy hh:mm:sstt');

--4. Display the current date in a format that appears as 03 Jan 1995.
   select FORMAT(GETDATE(), 'dd MMM yyy');

--5. Display the current date in a format that appears as Jan 04, 96.
   select FORMAT(GETDATE(), 'MMM dd, yy');

--6. Write a query to find out total number of months between 31-Dec-08 and 31-Mar-09.
   select DATEDIFF(MONTH,'2008-12-31','2009-03-31');

--7. Write a query to find out total number of years between 25-Jan-12 and 14-Sep-10.
  select DATEDIFF(YEAR,'2012-01-25','2010-08-14');

--8. Write a query to find out total number of hours between 25-Jan-12 7:00 and 26-Jan-12 10:30.
  select DATEDIFF(HOUR,'2012-01-25 7:00','2012-01-12 10:30');

--9. Write a query to extract Day, Month, Year from given date 12-May-16.
  select DATEPART( DAY,'2016-06-12') As 'Day';
  select DATEPART( MONTH,'2016-06-12') As 'Month';
  select DATEPART( YEAR,'2016-06-12') As 'year';

--10. Write a query that adds 5 years to current date.
  select DATEADD(YY,5,GETDATE());

--11. Write a query to subtract 2 months from current date.
  select DATEADD(MM,-2,GETDATE());

--12. Extract month from current date using datename () and datepart () function.
  select DATEPART( MONTH,'2016-06-12') As 'Month';
  select DATENAME(MONTH,GETDATE()) as 'MOnth';

--13. Write a query to find out last date of current month.
  select EOMONTH(GETDATE());
  
--14. Calculate your age in years and months.
  select DATEDIFF(YEAR,'2004-12-18',GETDATE());
  select DATEDIFF(MONTH,'2004-12-18',GETDATE());
   
 --PART B
  create table EMP_DETAIL(
    EmpNo int,
	EmpName Varchar(10),
	JoiningDate Datetime,
	Salary int,
	City Varchar(10)
  );

  insert into EMP_DETAIL values(101,'Keyur','2002-01-05',12000,'Rajkot')
  insert into EMP_DETAIL values(102,'Hardik','2004-02-15',14000,'Ahmedabad')
  insert into EMP_DETAIL values(103,'Kajal','2006-03-14',15000,'Baroda')
  insert into EMP_DETAIL values(104,'Bhoomi','2005-06-23',12500,'Ahmedabad')
  insert into EMP_DETAIL values(105,'Harmit','2004-02-15',14000,'Rajkot')
  select *from EMP_DETAIL

--1. Write a query to find new date after 365 day with reference to JoiningDate.
  select DATEADD(DD,365,JoiningDate) from EMP_DETAIL;

--2. Display the JoiningDate in a format that appears as may 5 1994 12:00AM.
  select FORMAT(JoiningDate, 'MMM dd yyy hh:mm:sstt') from EMP_DETAIL;

--3. Display the JoiningDate in a format that appears as 03 Jan 1995.
   select FORMAT(JoiningDate, 'dd MMM yyy') from EMP_DETAIL;

--4. Display the JoiningDate in a format that appears as Jan 04, 96.
    select FORMAT(JoiningDate, 'MMM dd, yy') from EMP_DETAIL;

--5. Write a query to find out total number of months between JoiningDate and 31-Mar-09
      select DATEDIFF(MONTH,JoiningDate,'31-Mar-09') from EMP_DETAIL;

--6. Write a query to find out total number of years between JoiningDate and 14-Sep-10.
      select DATEDIFF(YEAR,JoiningDate,'14-Sep-10') from EMP_DETAIL;
 
--Part – C:
--1. Write a query to extract Day, Month, Year from JoiningDate.
  select DATEPART( DAY,JoiningDate) As 'Day' from EMP_DETAIL;
  select DATEPART( MONTH,JoiningDate) As 'Month' from EMP_DETAIL;
  select DATEPART( YEAR,JoiningDate) As 'year' from EMP_DETAIL;

--2. Write a query that adds 5 years to JoiningDate.
  select DATEADD(YY,5,JoiningDate) from EMP_DETAIL;

--3. Write a query to subtract 2 months from JoiningDate.
  select DATEADD(MM,-2,JoiningDate) from EMP_DETAIL;

--4. Extract month from JoiningDate using datename () and datepart () function.
  select DATEPART( MONTH,JoiningDate) As 'Month' from EMP_DETAIL;
  select DATENAME(MONTH,JoiningDate) as 'MOnth' from EMP_DETAIL;

--5. Calculate your age in years and months  select DATEDIFF(YEAR,'2004-12-18',JoiningDate) from EMP_DETAIL;
  select DATEDIFF(MONTH,'2004-12-18',JoiningDate) from EMP_DETAIL; 