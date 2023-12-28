create table employee(
emp_id int, 
f_name varchar(10),
l_name varchar(10), 
job_id int,
salary int,
mng_id int,
dept_id int);


create table department( dept_id int,
dept_name varchar(20),
location varchar(10),
mng_id int,
elocation_id int);


ALTER TABLE EMPLOYEE
MODIFY JOB_ID VARCHAR(6) ;


INSERT INTO employee (emp_id, f_name, job_id, salary, mng_id, dept_id)
VALUES
("101", "ankit", "HP124", "200000", "2", "24"),
("102", "sarvesh", "HP123", "150000", "2", "24"),
("103", "krishna", "HP125", "500000", "5", "44"),
("104", "rana", "HP122", "250000", "3", "54"),
("105", "soniya", "HP121", "400000", "1", "22"),
("106", "nithin", "HP120", "300000", "4", "34"),
("107", "karan", "HP126", "300001", "2", "34"),
("108", "shilpa", "HP127", "300001", "5", "24"),
("109", "mukesh", "HP128", "300001", "4", "44");


INSERT INTO DEPARTMENT 
VALUES("22", "administration", "uk", "1", "218"),
("24", "production", "india", "2", "212"),
("34", "development", "india", "4", "212"),
("44", "communication", "usa", "5", "220"),
("54", "maintenance", "usa", "3", "220");


SELECT * FROM department;



CREATE VIEW EMP_VIEW AS 
SELECT emp_id, f_name, job_id, salary, mng_id, dept_id 
FROM EMPLOYEE;


CREATE VIEW DEP_VIEW AS 
SELECT dept_id,dept_name,location ,mng_id ,elocation_id
FROM DEPARTMENT;


SELECT e.f_name, e.l_name FROM employee e
JOIN emp_view ev
ON e.emp_id = ev.emp_id
WHERE ev.salary > e.salary;

DELIMITER //


DELIMITER //
CREATE PROCEDURE SALARY()
BEGIN 
SELECT * FROM employee 
WHERE salary> 250000;
END //
call salary();


DELIMITER //
CREATE PROCEDURE GetEmployeesBySalary(department_id INT)
BEGIN
SELECT *
FROM employee
WHERE dept_id = department_id
ORDER BY salary DESC;
END //
DELIMITER ; 
CALL GetEmployeesBySalary(44);