BEGIN TRANSACTION;
CREATE TABLE IF NOT EXISTS "students" (
	"ID"	INTEGER NOT NULL,
	"Name"	TEXT NOT NULL UNIQUE,
	"Age"	TEXT,
	"Gender"	TEXT,
	"Points"	INTEGER,
	PRIMARY KEY("ID" AUTOINCREMENT)
);
INSERT INTO "students" VALUES (1,'Alex','21','M',200);
INSERT INTO "students" VALUES (2,'Basma','25','F',300);
INSERT INTO "students" VALUES (3,'Hasan','30','M',150);
INSERT INTO "students" VALUES (4,'Layal','18','F',350);
INSERT INTO "students" VALUES (5,'Robert','34','M',500);
INSERT INTO "students" VALUES (6,'Jana','33','F',500);
COMMIT;
-- # Answer 1
SELECT *
FROM students;
-- # Answer 2
SELECT * 
FROM students
WHERE Age > 30;
-- # Answer 3
SELECT name
FROM students
WHERE age = 30
AND gender = 'Female';
--# Answer 4
SELECT points
FROM students
WHERE name = 'Alex';
--# Answer 5
INSERT INTO students (name, Age)
VALUES ('alisaghir', 23);
--# Answer 6
UPDATE students
SET points = points + 10
WHERE name = 'Basma';
--# Answer 7
UPDATE students
SET points = points - 10
WHERE name = 'Alex';
--# Creating a table
CREATE TABLE graduates (
ID INTEGER PRIMARY KEY AUTOINCREMENT,
Name TEXT NOT NULL UNIQUE,
Age INTEGER,
Gender TEXT,
Points INTEGER,
Graduation TEXT
);
--# Answer 10
INSERT INTO graduates (name, Age, Gender)
SELECT name, Age, Gender
FROM students
WHERE name = 'Layal';
--# Answer 11
UPDATE graduates
SET Graduation = 2023
WHERE name = 'Layal';
--# Answer 12
DELETE FROM students
WHERE name = 'Layal';
--# Answer 18
SELECT max(Points) AS "Highest Points"
FROM students;
--# Answer 19
SELECT AVG(Points)
FROM students;
--# Answer 20
SELECT count(name)
FROM students
WHERE Points = 500;
--# Answer 21
SELECT name
FROM students
WHERE name LIKE '%s%';
--# Answer 22
SELECT *
FROM students
ORDER BY points DESC;
