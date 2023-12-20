CREATE DATABASE SQL_BASICS; 
USE SQL_BASICS;

CREATE TABLE PRODUCT(
	PROD_CODE INT,
    PROD_NAME VARCHAR(50),
    PRICE INT,
    STOCK INT,
    CATEGORY VARCHAR(50)
    ); 
DESC PRODUCT;

CREATE TABLE CUSTOMER(
	CUS_ID INT,
    CUS_NAME VARCHAR(50),
    CUS_LOCAION VARCHAR(20),
    CUS_PHNO INT(10)
    );
DESC CUSTOMER;  

CREATE TABLE SALES(
	ORDER_DATE DATE,
    ORDER_NO INT, 
    CUS_ID INT,
    CUS_NAME VARCHAR(50),
    S_CODE INT,
    PROD_NAME VARCHAR(50),
    QUANTITY INT,
    PRICE INT
    );
DESC SALES;   

INSERT INTO PRODUCT(PROD_CODE,PROD_NAME,PRICE,STOCK,CATEGORY)
			VALUES("1","tulip","198","5","perfume"),
("2","cornoto","50","21","icecream"),
("3","Pen","10",'52','Stationary'),
("4","Lays","10","20","snacks"),
("5","mayanoise","90","10","dip"),
("6","jam","105","10","spread"),
("7","shampoo","5"	,"90",	"hair product"),
("8",	"axe"	,"210"	,"4",	"perfume"),
("9",	"park avenue",	"901",	"2",	"perfume"),
("10",	"wattagirl"	,"201"	,"3",	"perfume"),
("11",	"pencil",	"4"	,"10",	"Stationary"),
("12",	"sharpener"	,"5",	"90",	"Stationary"),
("13",	"sketch pen","30"	,"10",	"Stationary"),
("14",	"tape"	,"15",	"30	", "Stationary"),
("15",	"paint",	 "60",	"12",	"Stationary"),
("16",	"chocolate",	"25",	"50",	"snacks"),
("17"	,"biscuts",	"60" ,"26"	,"snacks"),
("18"	,"mango",	"100"	,"21",	"fruits"),
("19"	,"apple",	"120",	"9"	,"fruits"),
("20",	"kiwi" ,	"140",	"4",	"fruits"),
("21",	"carrot",	"35",	"12",	"vegetable"),
("22",	"onion",	"22",	"38",	"vegetable"),
("23"	,"tomato",	"21"	,"15",	"vegetable"),
("24"	,"serum",	"90",	"4"	,"hair product"),
("25",	"conditioner",	"200",	"5"	,"hair product"),
("26"	,"oil bottle",	"40",	"2"	,"kitchen utensil"); 
SELECT * FROM PRODUCT;   

INSERT INTO CUSTOMER(CUS_ID,CUS_NAME, CUS_LOCAION ,CUS_PHNO)
            VALUES ("1111","Nisha","kerala","8392320"),
("1212","Oliver","kerala","4353891"),
("1216","Nila","delhi","3323242"),
("1246","Vignesh","chennai","1111212"),
("1313","shiny","Maharastra","5454543"),
("1910","Mohan","mumbai","9023941"),
("2123","Biyush","Bombay","1253358"),
("3452","Alexander","West Bengal","1212134"),
("3921","Mukesh","Manipur","4232321"),
("5334","Christy","pakistan","2311111"),
("9021","Rithika","Kashmir","1121344"),
("9212","Jessica","banglore","1233435"),
("9875","Stephen","chennai","1212133"); 
SELECT * FROM customer;   

DROP TABLE IF EXISTS SALES;
ALTER TABLE SALES
MODIFY ORDER_NO VARCHAR(20);

INSERT INTO SALES(ORDER_DATE, ORDER_NO, CUS_ID, CUS_NAME, S_CODE, PROD_NAME, QUANTITY, PRICE)
VALUES 
    ('2016-07-24', 'HM06', '9212', 'Jessica', '11', 'pencil', '3', '30'),
    ('2016-10-19', 'HM09', '3921', 'Mukesh', '17', 'biscuits', '10', '600'),
    ('2016-10-30', 'HM10', '9875', 'Stephen', '2', 'cornoto', '10', '500'),
    ('2018-04-12', 'HM03', '1212', 'Oliver', '20', 'kiwi', '3', '420'),
    ('2018-05-02', 'HM05', '1910', 'Mohan', '20', 'kiwi', '2', '280'),
    ('2018-09-20', 'HM08', '5334', 'Chirsty', '16', 'chocolate', '2', '50'),
    ('2019-01-11', 'HM07', '1246', 'Vignesh', '19', 'apple', '5', '600'),
    ('2019-03-15', 'HM01', '1910', 'Mohan', '5', 'mayanoise', '4', '360'),
    ('2021-02-10', 'HM04', '1111', 'Nisha', '25', 'conditioner', '5', '1000'),
    ('2021-02-12', 'HM02', '2123', 'Biyush', '3', 'Pen', '2', '20');
SELECT * FROM SALES;    

ALTER TABLE SALES
ADD COLUMN S_NO INT,
ADD COLUMN CATEGORIES VARCHAR(10);
SELECT * FROM SALES;   

ALTER TABLE PRODUCT
MODIFY STOCK VARCHAR(10);  

ALTER TABLE CUSTOMER
RENAME TO CUSTOMER_DETAILS;   


ALTER TABLE SALES
DROP S_NO,
DROP CATEGORIES;   

SELECT ORDER_NO,CUS_ID,ORDER_DATE,PRICE,QUANTITY FROM SALES;

SELECT * FROM PRODUCT
WHERE CATEGORY="Stationary";	  

SELECT DISTINCT CATEGORY FROM PRODUCT;

SELECT * FROM SALES
WHERE QUANTITY > 2 AND PRICE<500;    

SELECT CUS_NAME FROM customer_details
WHERE CUS_NAME LIKE '%A';   

SELECT * FROM PRODUCT
ORDER BY PRICE DESC;   

SELECT PROD_CODE,CATEGORY FROM PRODUCT
WHERE CATEGORY IN (
					SELECT CATEGORY FROM PRODUCT
                    GROUP BY CATEGORY
                    HAVING COUNT(CATEGORY)>=2);   

                    
SELECT ORDER_NO, C.CUS_NAME FROM SALES
JOIN CUSTOMER_DETAILS  C
USING(CUS_ID);   
