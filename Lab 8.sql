CREATE TABLE SALES_DATA(
   Region VARCHAR(20),
   Product VARCHAR(10),
   Sales_Amount int,
   Year int
);

insert into SALES_DATA values ('North America', 'Watch',1500 ,2023 )
insert into SALES_DATA values ('Europe', 'Mobile',1200 ,2023 )
insert into SALES_DATA values ('Asia', 'Watch',1800 ,2023 )
insert into SALES_DATA values ('North America','TV',900,2024)
insert into SALES_DATA values ('Europe', 'Watch',2000 ,2024)
insert into SALES_DATA values ('Asia', 'Mobile',1000 ,2024)
insert into SALES_DATA values ('North America', 'Mobile',1600 ,2023 )
insert into SALES_DATA values ('Europe', 'TV',1500 ,2023 )
insert into SALES_DATA values ('Asia', 'TV',1100 ,2024)
insert into SALES_DATA values ('North America', 'Watch',1700 ,2024)
select *from SALES_DATA

--part – A:
--1. Display Total Sales Amount by Region.
SELECT REGION, SUM(Sales_Amount) FROM SALES_DATA GROUP BY Region;
--2. Display Average Sales Amount by Product
SELECT PRODUCT, AVG(Sales_Amount) FROM SALES_DATA GROUP BY Product;

--3. Display Maximum Sales Amount by Year
SELECT YEAR, MAX(Sales_Amount) FROM SALES_DATA GROUP BY YEAR;

--4. Display Minimum Sales Amount by Region and Year
SELECT REGION,YEAR, MIN(Sales_Amount) FROM SALES_DATA GROUP BY Region,Year;

--5. Count of Products Sold by Region
SELECT REGION, COUNT(Sales_Amount) FROM SALES_DATA GROUP BY Region;

--6. Display Sales Amount by Year and Product
SELECT YEAR,Product, SUM(Sales_Amount) FROM SALES_DATA GROUP BY YEAR,Product;

--7. Display Regions with Total Sales Greater Than 5000
SELECT REGION, SUM(Sales_Amount) FROM SALES_DATA GROUP BY Region HAVING SUM(Sales_Amount)>5000;

--8. Display Products with Average Sales Less Than 10000
SELECT PRODUCT, AVG(Sales_Amount) FROM SALES_DATA GROUP BY Product HAVING AVG(Sales_Amount)<10000;

--9. Display Years with Maximum Sales Exceeding 500
SELECT YEAR, MAX(Sales_Amount) FROM SALES_DATA GROUP BY YEAR HAVING MAX(Sales_Amount)>500;

--10. Display Regions with at Least 3 Distinct Products Sold.
SELECT REGION, COUNT (DISTINCT Product) FROM SALES_DATA GROUP BY Region HAVING COUNT (DISTINCT Product) <= 3;

--11. Display Years with Minimum Sales Less Than 1000
SELECT YEAR, MIN(Sales_Amount) FROM SALES_DATA GROUP BY YEAR HAVING MIN(Sales_Amount)<1000;

--12. Display Total Sales Amount by Region for Year 2023, Sorted by Total Amount
SELECT Region, SUM(Sales_Amount) FROM SALES_DATA WHERE YEAR = 2023 GROUP BY Region ORDER BY SUM(Sales_Amount);

--Part – B:
--1. Display Count of Orders by Year and Region, Sorted by Year and Region
SELECT YEAR, REGION ,COUNT(PRODUCT) FROM SALES_DATA GROUP BY YEAR, Region ORDER BY YEAR, Region;

--2. Display Regions with Maximum Sales Amount Exceeding 1000 in Any Year, Sorted by Region
SELECT REGION, MAX(Sales_Amount) FROM SALES_DATA GROUP BY Region ORDER BY Region;

--3. Display Years with Total Sales Amount Less Than 1000, Sorted by Year Descending
SELECT YEAR, SUM(Sales_Amount) FROM SALES_DATA GROUP BY YEAR HAVING SUM(Sales_Amount)<1000 ORDER BY YEAR;

--4. Display Top 3 Regions by Total Sales Amount in Year 2024
SELECT TOP 3 REGION, SUM(Sales_Amount) from SALES_DATA WHERE YEAR = 2024 GROUP BY Region;

--Part – C:
--1. Display Products with Average Sales Amount Between 1000 and 2000, Ordered by Product Name
SELECT PRODUCT, AVG(Sales_Amount) from SALES_DATA GROUP BY Product HAVING AVG(Sales_Amount)>1000 AND AVG(Sales_Amount)<2000 ORDER BY PRODUCT

--2. Display Years with More Than 5 Orders from Each Region
SELECT YEAR,Region, COUNT(PRODUCT) FROM SALES_DATA GROUP BY YEAR,Region HAVING COUNT(Product)>5; 

--3. Display Regions with Average Sales Amount Above 1500 in Year 2023 sort by amount in descending.
SELECT REGION, AVG(Sales_Amount) from SALES_DATA WHERE YEAR = 2023 GROUP BY Region HAVING AVG(Sales_Amount)>1500 ORDER BY AVG(Sales_Amount) DESC;

--4. Find out region wise duplicate product.
SELECT REGION,PRODUCT,COUNT(PRODUCT) FROM SALES_DATA GROUP BY Region,Product HAVING COUNT(PRODUCT)>1; 
--5. Find out region wise highest sales amount.
SELECT REGION, MAX(Sales_Amount) FROM SALES_DATA GROUP BY REGION