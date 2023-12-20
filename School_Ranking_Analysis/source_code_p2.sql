CREATE DATABASE sql_institution;

USE sql_institution;

CREATE TABLE STUDENTS(
 STUD_ID INT NOT NULL,
 STUD_FN VARCHAR(10) NOT NULL,
 STUD_LN VARCHAR(10) NOT NULL,
 CLASS INT,
 AGE INT,
 PRIMARY KEY(STUD_ID));

CREATE TABLE MARKSHEET(
 SCORE INT,
 YEAR DATE,
 RANKING INT,
 CLASS INT,
 STUD_ID INT);


INSERT INTO STUDENTS(STUD_ID,STUD_FN,STUD_LN,CLASS,AGE)
VALUES("1", "krishna", "gee", "10", "18"),
 ("2", "Stephen", "Christ", "10", "17"),
 ("3", "Kailash", "kumar", "10", "18"),
 ("4", "ashish", "jain", "10", "16"),
("5", "khusbu", "jain", "10", "17"),
("6", "madhan", "lal", "10", "16"),
("7", "saurab", "kothari", "10", "15"),
("8", "vinesh", "roy", "10", "14"),
("9", "rishika", "r", "10", "15"),
("10", "sara", "rayan", "10", "16"),
("11", "rosy", "kumar", "10", "16");


INSERT INTO marksheet(SCORE,YEAR,CLASS,RANKING,STUD_ID)
VALUES("989", "2014", "10", "1", "1"),
("454", "2014", "10", "10", "2"),
("880", "2014", "10", "4", "3"),
("870", "2014", "10", "5", "4"),
("720", "2014", "10", "7", "5"),
("670", "2014", "10", "8", "6"),
("900", "2014", "10", "3", "7"),
("540", "2014", "10", "9", "8"),
("801", "2014", "10", "6", "9"),
("420", "2014", "10", "11", "10"),
("970", "2014", "10", "2", "11"),
("720", "2014", "10", "12", "12");


ALTER TABLE marksheet
MODIFY YEAR INT;


SELECT * FROM marksheet;


SELECT STUD_ID,STUD_FN FROM STUDENTS
WHERE AGE>=16 AND STUD_LN = "KUMAR";


SELECT * FROM MARKSHEET
WHERE SCORE BETWEEN 800 AND 1000;


SELECT *,SCORE+5 AS NEW_SCORE FROM MARKSHEET;

SELECT * FROM MARKSHEET
ORDER BY SCORE DESC;


SELECT * FROM STUDENTS
WHERE STUD_FN LIKE 'A%';