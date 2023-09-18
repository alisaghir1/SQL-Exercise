# Answer 1
SELECT *
FROM students
# Answer 2
SELECT * 
FROM students
WHERE Age > 30;
# Answer 3
SELECT name
FROM students
WHERE age = 30
AND gender = 'Female';
# Answer 4
SELECT points
FROM students
WHERE name = 'Alex';
# Answer 5
INSERT INTO students (name, Age)
VALUES ('alisaghir', 23);
# Answer 6
UPDATE students
SET points = points + 10
WHERE name = 'Basma';
# Answer 7
UPDATE students
SET points = points - 10
WHERE name = 'Alex';
# Creating a table
CREATE TABLE graduates (
ID INTEGER PRIMARY KEY AUTOINCREMENT,
Name TEXT NOT NULL UNIQUE,
Age INTEGER,
Gender TEXT,
Points INTEGER,
Graduation TEXT
);
# Answer 10
INSERT INTO graduates (name, Age, Gender)
SELECT name, Age, Gender
FROM students
WHERE name = 'Layal';
# Answer 11
UPDATE graduates
SET Graduation = 2023
WHERE name = 'Layal';
# Answer 12
DELETE FROM students
WHERE name = 'Layal';

# Answer 14
CREATE TABLE NewInfo AS
SELECT employees.name, employees.Company, companies.Date
FROM employees
INNER JOIN companies
ON employees.Company = companies.Name
# Answer 15
SELECT employees.name, companies.date
FROM employees
JOIN companies
ON employees.Company = companies.name
WHERE companies.date < 2000;
# Answer 16
SELECT companies.name, employees.Role
FROM companies
JOIN employees
ON employees.Company=companies.name
WHERE Role = "Graphic Designer"

# Answer 18
SELECT max(Points) AS "Highest Points"
FROM students;
# Answer 19
SELECT AVG(Points)
FROM students;
# Answer 20
SELECT count(name)
FROM students
WHERE Points = 500;
# Answer 21
SELECT name
FROM students
WHERE name LIKE '%s%';
# Answer 22
SELECT *
FROM students
ORDER BY points DESC;
# Answer 23
