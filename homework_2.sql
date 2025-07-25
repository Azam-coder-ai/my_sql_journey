	use lesson_2

	--1. Create a table Employees with columns: EmpID INT, Name (VARCHAR(50)), and Salary (DECIMAL(10,2)).
	CREATE TABLE Employeees(
			EmpID INT, 
			Name VARCHAR(50),
			Salary DECIMAL(10,2));

	--2. Insert three records into the Employees table using different INSERT INTO approaches (single-row insert and multiple-row insert).
	INSERT INTO Employeees (EmpID, Name, Salary)
	VALUES
		(1, 'Antony', 12200),
		(2, 'Joshua', 24500),
		(3, 'Roberta', 3700);

	--3. Update the Salary of an employee to 7000 where EmpID = 1
	update Employeees
	set Salary = 70000
	where EmpID = 1

	--4. Delete a record from the Employees table where EmpID = 2.
	delete Employeees
	where EmpID = 2 

	--5. Give a brief definition for difference between DELETE, TRUNCATE, and DROP.
	--Delete removes specific rows from table 
	--Truncate removes all rows from a table quickly
	--Drop removes entire table structure and its data

	--6. Modify the Name column in the Employees table to VARCHAR(100).
	ALTER TABLE Employeees
	ALTER COLUMN Name varchar(100);

	--7. Add a new column Department (VARCHAR(50)) to the Employees table.
	ALTER TABLE Employeees
	ADD Department Varchar(50);

	--8. Change the data type of the Salary column to FLOAT.
	ALTER TABLE Employeees 
	ALTER COLUMN Salary float;

	--9. Create another table Departments with columns DepartmentID (INT, PRIMARY KEY) and DepartmentName (VARCHAR(50)).
	Create table Departmeents(
		DepartmentID INT PRIMARY KEY,
		DepartmentName VARCHAR(50));

	--10.Remove all records from the Employees table without deleting its structure.
	Truncate Table Employeees

	--11. Insert five records into the Departments table using INSERT INTO SELECT method(you can write anything you want as data).
	insert into departmeents(DepartmentID, DepartmentName)
	values
		(1, 'IT'),
		(2, 'Engineering'),
		(3, 'Data analytics'),
		(4, 'Business managment'),
		(5, 'Medical department')

	--12. Update the Department of all employees where Salary > 5000 to 'Management'.
	update Employeees
	set department = 'Management'
	where Salary > 50000

	--13. Write a query that removes all employees but keeps the table structure intact.
	Truncate table employeees

	--14. Drop the Department column from the Employees table.
	alter table employeees
	drop column department

	--15. Rename the Employees table to StaffMembers using SQL commands.
	EXEC sp_rename 'Employeees', 'StaffffMembers';

	--16. Write a query to completely remove the Departments table from the database.
	drop table departmeents

	--17. Create a table named Products with at least 5 columns, including: ProductID (Primary Key), ProductName (VARCHAR), Category (VARCHAR), Price (DECIMAL)
	create table Products(
		ProductID int primary key,
		ProductName varchar,
		Category varchar,
		price decimal);

	--18.Add a CHECK constraint to ensure Price is always greater than 0.
	ALTER TABLE Products
	ADD CONSTRAINT CHK_Price_Positive CHECK (Price > 0);

	--19. Modify the table to add a StockQuantity column with a DEFAULT value of 50.
	alter table Products
	add StockQuantity int default(50);

	--20. Rename Category to ProductCategory
	exec sp_rename 'Products.Category', 'ProductCategory', 'column';

	--21. Insert 5 records into the Products table using standard INSERT INTO queries.
	insert into Products (ProductID, ProductName, ProductCategory, price)
	values
	(1, 'Wireless Mouse', 'Electronics', 25.99),
	(2, 'Water Bottle', 'Kitchen', 10.50),
	(3, 'Bluetooth Speaker', 'Electronics', 75.00),
	(4, 'Notebook', 'Stationery', 3.20),
	(5, 'Running Shoes', 'Footwear', 60.00);

	--22.Use SELECT INTO to create a backup table called Products_Backup containing all Products data.
	select * into Products_backup
	from Products 
	select * from Products_backup

	--23. Rename the Products table to Inventory.
	exec sp_rename Products, Inventory;

	--24. Alter the Inventory table to change the data type of Price from DECIMAL(10,2) to FLOAT.
	alter table Inventory
	alter column Price float

	--25. Add an IDENTITY column named ProductCode that starts from 1000 and increments by 5 to Inventory table.
	select	
		IDENTITY(int, 1000, 5) as ProductCode,
		*
	into inventory_new
	from Inventory;

select * from inventory



