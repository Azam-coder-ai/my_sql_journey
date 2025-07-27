use lesson_3
-- 1. Define and explain the purpose of BULK INSERT in SQL Server.
--BULK INSERT is a T-SQL command used to quickly and efficiently import large volumes of data from a data file (like .txt or .csv) into a SQL Server tab

--2. List four file formats that can be imported into SQL Server.
--csv, txt, excel-files, xml

--3. Create a table Products with columns: ProductID (INT, PRIMARY KEY), ProductName (VARCHAR(50)), Price (DECIMAL(10,2)).
create table Products(
	ProductID int primary key,
	ProductName varchar(50),
	Price decimal(10,2));
--4. Insert three records into the Products table using INSERT INTO.
insert into Products(ProductID, ProductName, Price)
values
	(1, 'USB Flash Drive', 15.99),
	(2, 'Laptop Stand', 45.50),
	(3, 'Noise Cancelling Headphones', 89.00);

--5. Explain the difference between NULL and NOT NULL.
--NULL Represents missing, unknown, or undefined data. A column with NULL can accept empty values.It does not mean zero or an empty string — it means "no value."
--NOT NULL Forces a column to always have a value. You cannot insert or update the column with a NULL — it will raise an error. Ensures data integrity.

-- 6. Add a UNIQUE constraint to the ProductName column in the Products table.
alter table Products 
add constraint UQ_productName unique (ProductName);

--7. Write a comment in a SQL query explaining its purpose.
-- or /* stand for commenting

--8. Add CategoryID column to the Products table.
alter table Products
add CategoryID int

--9. Create a table Categories with a CategoryID as PRIMARY KEY and a CategoryName as UNIQUE.
create table Categories(
	CategoryID int primary key,
	CategoryName Varchar(50) Unique);

--10. Explain the purpose of the IDENTITY column in SQL Server.
--The IDENTITY column is used to automatically generate sequential numeric values for each new row inserted into a table — commonly used for primary keys. Example: CREATE TABLE Employees (
    --EmpID INT IDENTITY(1,1) PRIMARY KEY,
    --Name VARCHAR(50),
    --Salary DECIMAL(10,2)

--11. Use BULK INSERT to import data from a text file into the Products table.
bulk insert Products 
from 'C:\Users\azamb\Desktop\in_1.txt'
with (
	fieldterminator= ',',
	rowterminator = '\r\n',
	firstrow = 2,
	codepage = '65001')
--12. Create a FOREIGN KEY in the Products table that references the Categories table.
alter table Products 
add constraint FK_Products_Categories
foreign key (CategoryId) references Categories(CategoryID)


--13. Explain the differences between PRIMARY KEY and UNIQUE KEY.
--PRIMARY KEY Ensures that all values in the column are unique. Does not allow NULL values. There can be only one PRIMARY KEY in a table.
--Used as the main identifier of each row.UNIQUE KEY Also ensures all values are unique.Allows NULL values (one or more). You can have multiple UNIQUE keys in a table. Used to make sure other columns also have unique values.

--14. Add a CHECK constraint to the Products table ensuring Price > 0.
alter table products
add constraint check_price check (price >0)

--15. Modify the Products table to add a column Stock (INT, NOT NULL).
alter table Products
add Stock int not null default 0;

--16. Use the ISNULL function to replace NULL values in Price column with a 0.
select
	ProductID,
	productName,
	ISNULL(price, 0) as price 
	stock
from Products

--17. Describe the purpose and usage of FOREIGN KEY constraints in SQL Server.
--The main purpose of a FOREIGN KEY is to ensure that the value in one table must match a value in another table — usually a Primary Key. It prevents actions that would leave orphan records in a related table.

--18. Write a script to create a Customers table with a CHECK constraint ensuring Age >= 18.
create table Customers1(
	CustomerID int primary key,
	Name varchar(100),
	age int,
	constraint check_age check(Age >=18)
);

-- 19. Create a table with an IDENTITY column starting at 100 and incrementing by 10.
create table demo(
	customerID int identity (100, 10) primary key);
 
--20. Write a query to create a composite PRIMARY KEY in a new table OrderDetails.
create table OrderDetails(
	OrderID int,
	ProductID int,
	Quantity int,
	primary key (orderID, ProductID)
	);

--21.Explain the use of COALESCE and ISNULL functions for handling NULL values.
--ISNULL The ISNULL function is used to replace NULL values with a specific value. It takes two arguments: the value to check, and the replacement value. Example: ISNULL(Price, 0) — if Price is NULL, it will return 0. COALESCE The COALESCE function returns the first non-NULL value from a list of expressions. It can take multiple arguments. Example: COALESCE(Phone, Email, 'No Contact') — returns Phone if it's not NULL, otherwise Email, and if both are NULL, returns 'No Contact'.

--22. Create a table Employees with both PRIMARY KEY on EmpID and UNIQUE KEY on Email.
create table Employees(
	EmpID int primary key,
	Email varchar (50) Unique);

--23. Write a query to create a FOREIGN KEY with ON DELETE CASCADE and ON UPDATE CASCADE options.
ALTER TABLE Products
ADD CONSTRAINT FK_Products_CategoryID
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID)
ON DELETE CASCADE
ON UPDATE CASCADE;

select * from Employees
select * from OrderDetails
select * from Categories
select * from Products



