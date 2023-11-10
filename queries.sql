/*
1.1. Select all the columns of the table
*/
SELECT * FROM student;
/*
1.2. Select specific columns
*/
SELECT student_number, last_name FROM student;
/*
2.1. SELECT all students with Doe as their last name
*/
SELECT * FROM student WHERE last_name = "Doe";
/*
2.2. SELECT students with a student number between 3 and 7
*/
SELECT * FROM student WHERE student_number BETWEEN 3 AND 7;
/*
2.2. Finding patterns with LIKE
*/
SELECT * FROM course WHERE course_name LIKE "M%";
/*
2.3. IN Operator
*/
SELECT * FROM course WHERE course_name IN ("Math","Algebra","Physics");
/*
3. Sorting and LIMIT
*/
SELECT * FROM mark WHERE course_code = "CRS01" ORDER BY mark;
SELECT * FROM mark ORDER BY mark DESC LIMIT 3;
/*
4. Aggregating functions
*/
SELECT COUNT(*) FROM student;
SELECT course_code, AVG(mark) FROM mark GROUP BY course_code;
/*
5. Alias
*/
SELECT COUNT(*) AS "Total Number of Students" FROM student;
SELECT course_code, AVG(mark) AS "Average" FROM mark GROUP BY course_code;