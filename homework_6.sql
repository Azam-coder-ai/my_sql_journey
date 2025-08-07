CREATE TABLE InputTbl (
    col1 VARCHAR(10),
    col2 VARCHAR(10)
);
    INSERT INTO InputTbl (col1, col2) VALUES 
('a', 'b'),
('a', 'b'),
('b', 'a'),
('c', 'd'),
('c', 'd'),
('m', 'n'),
('n', 'm');
--Puzzle 1: Finding Distinct Values Question: Explain at least two ways to find distinct values based on two columns.

select least (col1, col2) as col1,
	greatest (col1, col2) as col2
from InputTbl
group by LEAST(col1, col2), GREATEST(col1, col2)


CREATE TABLE TestMultipleZero (
    A INT NULL,
    B INT NULL,
    C INT NULL,
    D INT NULL
);

INSERT INTO TestMultipleZero(A,B,C,D)
VALUES 
    (0,0,0,1),
    (0,0,1,0),
    (0,1,0,0),
    (1,0,0,0),
    (0,0,0,0),
    (1,1,1,0);
/* Puzzle 2: Removing Rows with All Zeroes
Question: If all the columns have zero values, then don’t show that row. In this case, we have to remove the 5th row while selecting data.*/
select * from TestMultipleZero
where not (a = 0 and b =0 and c=0 and d=0)


create table section1(id int, name varchar(20))
insert into section1 
values 
	   (1, 'Been'),
       (2, 'Roma'),
       (3, 'Steven'),
       (4, 'Paulo'),
       (5, 'Genryh'),
       (6, 'Bruno'),
       (7, 'Fred'),
       (8, 'Andro')
--Puzzle 3: Find those with odd ids
select* from section1
where id %2=1

--Puzzle 4: Person with the smallest id (use the table in puzzle 3)
select* from section1
where id = (select min(id) from section1)

--Puzzle 5: Person with the highest id (use the table in puzzle 3)
select* from section1
where id = (select max(id) from section1)

--Puzzle 6: People whose name starts with b (use the table in puzzle 3)
select * from section1
where name like 'B%'


CREATE TABLE ProductCodes (
    Code VARCHAR(20)
);

INSERT INTO ProductCodes (Code) VALUES
('X-123'),
('X_456'),
('X#789'),
('X-001'),
('X%202'),
('X_ABC'),
('X#DEF'),
('X-999');

--Puzle 7: Write a query to return only the rows where the code contains the literal underscore _ (not as a wildcard)
select * from ProductCodes
where code like '%\_%' ESCAPE '\';