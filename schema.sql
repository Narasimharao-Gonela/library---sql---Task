CREATE DATABASE library_db;
USE library_db;
CREATE TABLE Student(
student_id int NOT NULL,
student_name varchar(25),
email varchar(25),
PRIMARY KEY(student_id)
);
CREATE TABLE Book(
book_id int NOT NULL,
title varchar(25),
author varchar(25),
PRIMARY KEY(book_id)
);
CREATE TABLE ISSUE(
issue_id int NOT NULL,
student_id int,
book_id int,
issue_date DATE,
return_date DATE,
PRIMARY KEY(issue_id),
FOREIGN KEY(student_id) REFERENCES Student(student_id),
FOREIGN KEY(book_id) REFERENCES Book(book_id)
);






