SELECT TOP 50 PERCENT *FROM BORROW

SELECT TOP 10 PERCENT AMOUNT FROM DEPOSIT

SELECT TOP 25 PERCENT *FROM DEPOSIT WHERE AMOUNT>5000

SELECT TOP 10 PERCENT AMOUNT FROM BORROW

SELECT DISTINCT CNAME,CITY FROM CUSTOMERS 

SELECT *,(AMOUNT + AMOUNT*0.1) AS 'EXTRA TABLE' FROM BORROW;

SELECT *FROM BORROW WHERE LOANNO % 2 = 0;

SELECT *FROM BORROW WHERE LOANNO % 2 != 0;


