CREATE DATABASE tutorial;

USE tutorial;

CREATE TABLE student(
    student_number INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(32) NOT NULL,
    last_name VARCHAR(32) NOT NULL
);

CREATE TABLE course(
    course_code VARCHAR(5) NOT NULL PRIMARY KEY,
    course_name VARCHAR(32) NOT NULL
);

CREATE TABLE mark(
    course_code VARCHAR(5),
    student_number INT,
    mark FLOAT,
    FOREIGN KEY (course_code) REFERENCES course(course_code),
    FOREIGN KEY (student_number) REFERENCES student(student_number)
);

INSERT INTO student(first_name,last_name) VALUES
("John","Doe"),
("Andrew","Ng"),
("Sam","Altman"),
("Elon","Musk"),
("Elon","Musk"),
("Ethan","Thompson"),
("Olivia","Rodriguez"),
("Mason","Carter"),
("Ava","Anderson");

INSERT INTO course VALUES
("CRS01","Math"),
("CRS02","Algebra"),
("CRS03","Statistics"),
("CRS04","Machine Learning");

INSERT INTO mark VALUES
("CRS01",1,8),
("CRS02",1,7),
("CRS03",1,10),
("CRS04",1,7.5),
("CRS01",2,8.5),
("CRS02",2,6.5),
("CRS03",2,9),
("CRS04",2,7.5),
("CRS01",3,9),
("CRS02",3,5.7),
("CRS03",3,10),
("CRS04",3,7.5),
("CRS01",4,9),
("CRS02",4,5.7),
("CRS03",4,6),
("CRS04",4,5),
("CRS01",5,6),
("CRS02",5,7),
("CRS03",5,6),
("CRS04",5,7),
("CRS01",6,6),
("CRS02",6,7),
("CRS03",6,8),
("CRS04",6,6),
("CRS01",7,10),
("CRS02",7,8),
("CRS03",7,9),
("CRS04",7,5),
("CRS01",8,5),
("CRS02",8,9),
("CRS03",8,4),
("CRS04",8,7),
("CRS01",9,3),
("CRS02",9,5),
("CRS03",9,9),
("CRS04",9,10);