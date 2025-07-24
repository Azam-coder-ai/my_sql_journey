use lesson_1
-- Q1. Define the following terms: data, database, relational database, and table.

--Data refers to raw facts or figures without context. It can be numbers, text, images, audio, etc.

--A database is an organized collection of data stored and accessed electronically. It allows data to be easily stored, managed, updated, and retrieved.
--Example:
----A school’s student record system, which stores data about students, teachers, grades, etc.

--A relational database is a type of database that stores data in tables (rows and columns) and uses relationships (keys) to connect different data sets.

--It follows the relational model proposed by E.F. Codd.

--Uses SQL (Structured Query Language) for managing data.

--Example:
--A database where the students table is linked to the grades table through a student_id.

--A table is a structured format for storing data in a relational database. It consists of:
--Rows (also called records) – each row represents a single entry.
--Columns (also called fields) – each column represents a specific attribute.

--Q2. List five key features of SQL Server.

-- 1) Relational Database Management
--SQL Server uses tables, primary/foreign keys, and relationships to store and manage structured data.
--Supports ACID (Atomicity, Consistency, Isolation, Durability) for reliable transactions.

-- 2) T-SQL (Transact-SQL)
--Microsoft's extension of SQL.
--Adds features like variables, loops, error handling, and stored procedures for more powerful programming within the database.

-- 3) Security Features
--Authentication modes: Windows or SQL Server logins.
--Roles and permissions to control user access.
--Transparent Data Encryption (TDE) to protect data at rest.

-- 4) Backup and Restore
--SQL Server supports full, differential, and transaction log backups.
--Allows point-in-time recovery to restore the database to an exact moment before failure.

--5) High Availability & Replication
--Features like Always On Availability Groups, Failover Clustering, and Database Mirroring help ensure minimal downtime.
--Replication allows you to copy data across servers for performance or redundancy.

-- Q3 What are the different authentication modes available when connecting to SQL Server? (Give at least 2)
--1. Windows Authentication
--Uses Windows user accounts to connect to SQL Server.
--It relies on the Windows operating system's login system (Active Directory).
--More secure and easier to manage in enterprise environments.
--No need to enter separate usernames/passwords inside SQL Server.
--✅ Recommended for most secure environments

--Q4. Create a new database in SSMS named SchoolDB.
CREATE DATABASE SchoolDB;

--Q5 Write and execute a query to create a table called Students with columns: StudentID (INT, PRIMARY KEY), Name (VARCHAR(50)), Age (INT).

CREATE TABLE Students(
	StudentID INT PRIMARY KEY,
	Name VARCHAR(50),
	Age INT)

--Q6. Describe the differences between SQL Server, SSMS, and SQL.
--1. SQL Server
--What it is: A database management system (DBMS) developed by Microsoft.
--Purpose: It stores, manages, and processes data in databases.
--Features: Includes engine to run queries, manage transactions, security, backup, and more.
--Example: You install SQL Server software on a server or PC to host your databases.

--2. SSMS (SQL Server Management Studio)
--What it is: A graphical user interface (GUI) tool for managing SQL Server.
--Purpose: Allows users to write SQL queries, design databases, configure security, and administer SQL Server instances.
--Features: Query editor, visual designers, dashboards, job scheduling, etc.
--Example: You open SSMS to connect to SQL Server and run queries or manage database objects.

--3. SQL (Structured Query Language)
--What it is: A programming language designed to manage and manipulate relational databases.
--Purpose: Used to write commands (queries) that create, read, update, and delete data.
--Features: Includes commands like SELECT, INSERT, UPDATE, DELETE, and CREATE TABLE.
--Example: The language you write inside SSMS or any other database tool to interact with databases.

--Q7. Research and explain the different SQL commands: DQL, DML, DDL, DCL, TCL with examples.
--1. DQL – Data Query Language
--Purpose - Used to query or retrieve data from a database.
--Common Command: Select 
-- Example:
Select * from Students;
--2. DML – Data Manipulation Language
--Purpose: Used to manipulate data inside tables.
--Common Commands: INSERT, UPDATE, DELETE 

--3. DDL – Data Definition Language
-- Purpose:
--Used to define or modify the structure of database objects (tables, schemas, etc.)
--Common Commands: CREATE, ALTER, DROP 

--4. DCL – Data Control Language
--Purpose:
--Used to control access to data in the database.
--Common Commands: GRANT, REVOKE 

--5. TCL – Transaction Control Language
--Purpose:
--Used to control transactions — groups of SQL commands that must be executed as a single unit.
--Common Commands: BEGIN TRANSACTION, COMMIT, ROLLBACK 

-- Write a query to insert three records into the Students table.
INSERT INTO Students(StudentID, Name, Age)
VALUES
	(1, 'JOHN', 21),
	(2, 'ALESSIA', 23),
	(3, 'MELICA', 19);



















