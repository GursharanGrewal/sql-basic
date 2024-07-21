CREATE DATABASE SQL_basics;
use SQL_basics;
create table sales(
Order_Date date,
Order_Number varchar(25),
Customer_Id int,
Customer_Name varchar(25),
Product_Code int, 
Product_Name varchar(25),
Quantity int,
Price int
);

create table customer(
Customer_Id int,
Customer_Name varchar(25),
Customer_Location varchar(25), 
Product_Name varchar(25),
Customer_Phone_Number int
);

create table product(
Product_Code int,
Product_Name varchar(25), 
Price int, 
Stock int, 
Category varchar(25)
);

ALTER TABLE sales
ADD S_no int;

ALTER TABLE sales
ADD categories varchar(25);

ALTER TABLE product
MODIFY COLUMN stock varchar(25);

ALTER TABLE Customer
RENAME TO Customer_Details;

ALTER TABLE sales
DROP COLUMN S_no;

ALTER TABLE sales
DROP COLUMN categories;

select * from sales;
select Order_Number, Customer_Id, Order_Date, Price, Quantity from sales;

Select * from product where category='Stationary';

select distinct Category from product;

select * from sales where Quantity > 2 and price < 500;

SELECT * FROM customer_details WHERE Customer_Name LIKE '%a';

select * FROM sales order by Price DESC;

select product_code , category from Product
having Product_Code >= 2
