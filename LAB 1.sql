Create database CSE_3A_179 

create table DEPOSIT(
  ACTNO INT,
  CNAME VARCHAR(50),
  BNAME VARCHAR(50),
  AMOUNT DECIMAL(8,2),
  ADATE DATETIME
);

create table BRANCH(
  BNAME VARCHAR(50),
  CITY VARCHAR(50),
);

create table CUSTOMERS(
  CNAME VARCHAR(50),
  CITY VARCHAR(50),
);

create table BORROW(
  LOANNO INT,
  CNAME VARCHAR(50),
  BNAME VARCHAR(50),
  AMOUNT DECIMAL(8,2),
);

insert into DEPOSIT values(101,'ANIL','VRCE',1000.00,'1995-3-1')
insert into DEPOSIT values(102,'SUNIL','AJNI',5000.00,'1996-1-4')
insert into DEPOSIT values(103,'MEHUL','KAROLBAGH',3500.00,'1995-11-17')
insert into DEPOSIT values(104,'MADHURI','CHANDI',1200.00,'1995-12-17')
insert into DEPOSIT values(105,'PRAMOD','M.G. ROAD',3000.00,'1996-3-27')
insert into DEPOSIT values(106,'SANDIP','ANDHERI',2000.00,'1996-3-31')
insert into DEPOSIT values(107,'SHIVANI','VIRAR',1000.00,'1995-9-5')
insert into DEPOSIT values(108,'KRANTI','NEHRU PLACE',5000.00,'1995-7-2')
insert into DEPOSIT values(109,'MINU','POWAI',7000.00,'1995-8-10')
select *from DEPOSIT;
DELETE FROM DEPOSIT

insert into BRANCH values('VRCE','NAGPUR')
insert into BRANCH values('AJNI','NAGPUR')
insert into BRANCH values('KAROLBAGH','DELHI')
insert into BRANCH values('CHANDI','DELHI')
insert into BRANCH values('DHARAMPETH','NAGPUR')
insert into BRANCH values('M.G. ROAD ','BANGLORE')
insert into BRANCH values('ANDHERI','BOMBAY')
insert into BRANCH values('VIRAR','BOMBAY')
insert into BRANCH values('NEHRU PLACE ','DELHI')
insert into BRANCH values('POWAI','BOMBAY')
select *from BRANCH;

insert into CUSTOMERS values('ANIL','CALCUTTA')
insert into CUSTOMERS values('SUNIL','DELHI')
insert into CUSTOMERS values('MEHUL','BARODA')
insert into CUSTOMERS values('MANDAR','PATNA')
insert into CUSTOMERS values('MADHURI','NAGPUR')
insert into CUSTOMERS values('PRAMOD','NAGPUR')
insert into CUSTOMERS values('SANDIP','SURAT')
insert into CUSTOMERS values('SHIVANI','BOMBAY')
insert into CUSTOMERS values('KRANTI','BOMBAY')
insert into CUSTOMERS values('NAREN','BOMBAY')
select *from CUSTOMERS;
DELETE FROM CUSTOMERS


insert into BORROW values(201,'ANIL','VRCE',1000.00)
insert into BORROW values(206,'MEHUL','AJNI',5000.00)
insert into BORROW values(311,'SUNIL','DHARAMPETH',3000.00)
insert into BORROW values(321,'MADHURI','ANDHERI',2000.00)
insert into BORROW values(375,'PRAMOD','VIRAR',8000.00)
insert into BORROW values(481,'KRANTI','NEHRU PLACE ',3000.00)
select *from BORROW;
