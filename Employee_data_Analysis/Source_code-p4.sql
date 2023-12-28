
CREATE TABLE EMPLOYEE(
 EMP_ID INT PRIMARY KEY,
 F_NAME VARCHAR(10),
 L_NAME VARCHAR(10),
 JOB_ID VARCHAR(5),
 SALARY INT,
 MNG_ID INT, 
 DEPT_ID INT);


INSERT INTO 
EMPLOYEE(EMP_ID,F_NAME,L_NAME,JOB_ID,SALARY,MNG_ID, 
DEPT_ID)
 VALUES("101", "ankit", "jain", "HP124", "200000", "2", "24"),
 ("102", "sarvesh", "patel", "HP123", "150000", "2", "24"),
 ("103", "krishna", "gee", "HP125", "500000", "5", "44"),
 ("104", "rana", "gee", "HP122", "250000", "3", "54"),
("105", "soniya", "jain", "HP121", "400000", "1", "22"),
("106", "nithin", "kumar", "HP120", "300000", "4", "34"),
("107", "karan", "patel", "HP126", "300001", "2", "34"),
("108", "shilpa", "jain", "HP127", "300001", "5", "24"),
("109", "mukesh", "singh", "HP128", "300001", "4", "44");


SELECT F_NAME,SALARY FROM EMPLOYEE
WHERE SALARY > 
(SELECT SALARY FROM EMPLOYEE 
WHERE L_NAME='KUMAR'
 LIMIT 1);


SELECT EMP_ID,L_NAME FROM EMPLOYEE
WHERE SALARY > (SELECT AVG(SALARY) FROM EMPLOYEE);


SELECT EMP_ID,F_NAME,SALARY FROM EMPLOYEE
WHERE SALARY > (SELECT MAX(SALARY) FROM EMPLOYEE
WHERE JOB_ID='HP122')
ORDER BY SALARY;


SELECT F_NAME,EMP_ID,SALARY FROM EMPLOYEE
ORDER BY SALARY DESC
LIMIT 3;