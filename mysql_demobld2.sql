
-- ALTER TABLE EMP DROP FOREIGN KEY EMP_DEPTNO_FK;
-- ALTER TABLE EMP DROP FOREIGN KEY EMP_MGR_FK;
--  
-- ALTER TABLE ORD DROP FOREIGN KEY ORD_CUSTID_FK ;
--    
-- ALTER TABLE ITEM DROP FOREIGN KEY ITEM_ORDID_FK;
-- ALTER TABLE ITEM DROP FOREIGN KEY ITEM_PRODD_FK;


DROP TABLE IF EXISTS customer;
CREATE TABLE customer (
  CUSTID int NOT NULL,
  NAME varchar(45) DEFAULT NULL,
  ADDRESS varchar(40) DEFAULT NULL,
  CITY varchar(30) DEFAULT NULL,
  STATE varchar(2) DEFAULT NULL,
  ZIP varchar(9) DEFAULT NULL,
  AREA decimal(3,0) DEFAULT NULL,
  PHONE varchar(9) DEFAULT NULL,
  REPID int NOT NULL,
  CREDITLIMIT decimal(9,2) DEFAULT NULL
); 


INSERT INTO customer VALUES
(100,'JOCKSPORTS','345 VIEWRIDGE','BELMONT','CA','96711',415,'598-6609',7844,5000.00),
(101,'TKB SPORT SHOP','490 BOLI RD.','REDWOOD CITY','CA','94061',415,'368-1223',7521,10000.00),
(102,'VOLLYRITE','9722 HAMILTON','BURLINGAME','CA','95133',415,'644-3341',7654,7000.00),
(103,'JUST TENNIS','HILLVIEW MALL','BURLINGAME','CA','97544',415,'677-9312',7521,3000.00),
(104,'EVERY MOUNTAIN','574 SUYYYYY RD.','CUPERTINO','CA','93301',408,'996-2323',7499,10000.00),
(105,'K + T SPORTS','3476 EL PASEO','SANTA CLARA','CA','91003',408,'376-9966',7844,5000.00),
(106,'SHAPE UP','908 SEQUOIA','PALO ALTO','CA','94301',415,'364-9777',7521,6000.00),
(107,'WOMENS SPORTS','VALCO VILLAGE','SUNNYVALE','CA','93301',408,'967-4398',7499,10000.00),
(108,'NORTH WOODS HEALTH AND FITNESS SUPPLY CENTER','98 LONE PINE WAY','HIBBING','MN','55649',612,'566-9123',7844,8000.00);



DROP TABLE IF EXISTS dept;
CREATE TABLE dept (
  DEPTNO int NOT NULL,
  DNAME varchar(14) DEFAULT NULL,
  LOC varchar(13) DEFAULT NULL
);


INSERT INTO dept VALUES 
(10,'ACCOUNTING','NEW YORK'),
(20,'RESEARCH','DALLAS'),
(30,'SALES','CHICAGO'),
(40,'OPERATIONS','BOSTON');



DROP TABLE IF EXISTS emp;
CREATE TABLE emp (
  EMPNO int NOT NULL,
  ENAME varchar(10) DEFAULT NULL,
  JOB varchar(9) DEFAULT NULL,
  MGR int DEFAULT NULL,
  HIREDATE datetime DEFAULT NULL,
  SAL decimal(7,2) DEFAULT NULL,
  COMM decimal(7,2) DEFAULT NULL,
  DEPTNO int NOT NULL
);


INSERT INTO emp VALUES 
(7369,'SMITH','CLERK',7902,'2010-12-17 00:00:00',800.00,NULL,20),
(7499,'ALLEN','SALESMAN',7698,'2011-02-20 00:00:00',1600.00,300.00,30),
(7521,'WARD','SALESMAN',7698,'2011-02-22 00:00:00',1250.00,500.00,30),
(7566,'JONES','MANAGER',7839,'2011-04-02 00:00:00',2975.00,NULL,20),
(7654,'MARTIN','SALESMAN',7698,'2011-09-28 00:00:00',1250.00,1400.00,30),
(7698,'BLAKE','MANAGER',7839,'2011-05-01 00:00:00',2850.00,NULL,30),
(7782,'CLARK','MANAGER',7839,'2011-06-09 00:00:00',2450.00,NULL,10),
(7788,'SCOTT','ANALYST',7566,'2012-12-09 00:00:00',3000.00,NULL,20),
(7839,'KING','PRESIDENT',NULL,'2011-11-17 00:00:00',5000.00,NULL,10),
(7844,'TURNER','SALESMAN',7698,'2011-09-08 00:00:00',1500.00,0.00,30),
(7876,'ADAMS','CLERK',7788,'2013-01-12 00:00:00',1100.00,NULL,20),
(7900,'JAMES','CLERK',7698,'2011-12-03 00:00:00',950.00,NULL,30),
(7902,'FORD','ANALYST',7566,'2011-12-03 00:00:00',3000.00,NULL,20),
(7934,'MILLER','CLERK',7782,'2012-01-23 00:00:00',1300.00,NULL,10);



DROP TABLE IF EXISTS my_emp;
CREATE TABLE my_emp (
  ID int NOT NULL,
  LAST_NAME varchar(25) DEFAULT NULL,
  FIRST_NAME varchar(25) DEFAULT NULL,
  USERID varchar(8) DEFAULT NULL,
  SALARY decimal(9,2) DEFAULT NULL
);


DROP TABLE IF EXISTS ord;
CREATE TABLE ord (
  ORDID int NOT NULL,
  ORDERDATE datetime DEFAULT NULL,
  COMMPLAN char(1) DEFAULT NULL,
  CUSTID int NOT NULL,
  SHIPDATE datetime DEFAULT NULL,
  TOTAL decimal(8,2) DEFAULT NULL
);


INSERT INTO ord VALUES 
(601,'2017-01-07 00:00:00','A',101,'2017-01-08 00:00:00',101.40),
(602,'2017-01-11 00:00:00','B',102,'2017-01-11 00:00:00',45.00),
(603,'2017-01-15 00:00:00','C',104,'2017-01-20 00:00:00',5860.00),
(604,'2016-05-01 00:00:00','A',106,'2016-05-30 00:00:00',2.40),
(605,'2016-06-05 00:00:00','B',102,'2016-06-20 00:00:00',56.00),
(606,'2016-06-15 00:00:00','A',106,'2016-06-30 00:00:00',698.00),
(607,'2016-07-14 00:00:00','A',106,'2016-07-30 00:00:00',8324.00),
(608,'2016-07-14 00:00:00','A',100,'2016-07-30 00:00:00',3.40),
(609,'2016-08-01 00:00:00','B',100,'2016-08-15 00:00:00',97.50),
(610,'2016-07-18 00:00:00','C',104,'2016-07-18 00:00:00',5.60),
(611,'2016-07-25 00:00:00','C',104,'2016-07-25 00:00:00',35.20),
(612,'2016-06-05 00:00:00','',102,'2016-06-05 00:00:00',224.00),
(613,'2017-03-12 00:00:00','',100,'2017-05-12 00:00:00',4450.00),
(614,'2017-02-01 00:00:00','',108,'2017-02-01 00:00:00',6400.00),
(615,'2017-02-01 00:00:00','',102,'2017-02-05 00:00:00',23940.00),
(616,'2017-02-03 00:00:00','',103,'2017-02-10 00:00:00',764.00),
(617,'2017-02-02 00:00:00','',104,'2017-02-04 00:00:00',1260.00),
(618,'2017-02-05 00:00:00','',105,'2017-03-03 00:00:00',46370.00),
(619,'2017-02-01 00:00:00','',107,'2017-02-06 00:00:00',710.00),
(620,'2017-02-15 00:00:00','A',102,'2017-03-06 00:00:00',3510.50),
(621,'2017-01-01 00:00:00','A',100,'2017-01-06 00:00:00',730.00);


DROP TABLE IF EXISTS price;
CREATE TABLE price (
  PRODID int NOT NULL,
  STDPRICE decimal(8,2) DEFAULT NULL,
  MINPRICE decimal(8,2) DEFAULT NULL,
  STARTDATE datetime DEFAULT NULL,
  ENDDATE datetime DEFAULT NULL
);



INSERT INTO price VALUES 
(100871,4.80,3.20,'2015-01-01 00:00:00','2015-12-31 00:00:00'),
(100890,58.00,46.40,'2015-01-01 00:00:00',NULL),
(100890,54.00,40.50,'2014-01-01 00:00:00','2014-05-31 00:00:00'),
(100860,35.00,28.00,'2016-06-01 00:00:00',NULL),
(100860,32.00,25.60,'2016-01-01 00:00:00','2016-05-31 00:00:00'),
(100860,30.00,24.00,'2015-01-01 00:00:00','2015-12-31 00:00:00'),
(100861,45.00,36.00,'2016-06-01 00:00:00',NULL),
(100861,42.00,33.60,'2016-01-01 00:00:00','2016-05-31 00:00:00'),
(100861,39.00,31.20,'2015-01-01 00:00:00','2015-12-31 00:00:00'),
(100870,2.80,2.40,'2016-01-01 00:00:00',NULL),
(100870,2.40,1.90,'2015-01-01 00:00:00','2015-12-01 00:00:00'),
(100871,5.60,4.80,'2016-01-01 00:00:00',NULL),
(101860,24.00,18.00,'2015-02-15 00:00:00',NULL),
(101863,12.50,9.40,'2015-02-15 00:00:00',NULL),
(102130,3.40,2.80,'2015-08-18 00:00:00',NULL),
(200376,2.40,1.75,'2016-11-15 00:00:00',NULL),
(200380,4.00,3.20,'2016-11-15 00:00:00',NULL);



DROP TABLE IF EXISTS product;
CREATE TABLE product (
  PRODID int NOT NULL,
  DESCRIP varchar(30) DEFAULT NULL
);


INSERT INTO product VALUES 
(100860,'ACE TENNIS RACKET I'),
(100861,'ACE TENNIS RACKET II'),
(100870,'ACE TENNIS BALLS-3 PACK'),
(100871,'ACE TENNIS BALLS-6 PACK'),
(100890,'ACE TENNIS NET'),
(101860,'SP TENNIS RACKET'),
(101863,'SP JUNIOR RACKET'),
(102130,'RH: \"GUIDE TO TENNIS\"'),
(200376,'SB ENERGY BAR-6 PACK'),
(200380,'SB VITA SNACK-6 PACK');


DROP TABLE IF EXISTS item;
CREATE TABLE item (
  ORDID int NOT NULL,
  ITEMID int NOT NULL,
  PRODID int DEFAULT NULL,
  ACTUALPRICE decimal(8,2) DEFAULT NULL,
  QTY decimal(8,0) DEFAULT NULL,
  ITEMTOT decimal(8,2) DEFAULT NULL
);


INSERT INTO item VALUES 
(601,1,200376,2.40,1,2.40),
(602,1,100870,2.80,20,56.00),
(603,2,100860,56.00,4,224.00),
(604,1,100890,58.00,3,174.00),
(604,2,100861,42.00,2,84.00),
(604,3,100860,44.00,10,440.00),
(605,1,100861,45.00,100,4500.00),
(605,2,100870,2.80,500,1400.00),
(605,3,100890,58.00,5,290.00),
(605,4,101860,24.00,50,1200.00),
(605,5,101863,9.00,100,900.00),
(605,6,102130,3.40,10,34.00),
(606,1,102130,3.40,1,3.40),
(607,1,100871,5.60,1,5.60),
(608,1,101860,24.00,1,24.00),
(608,2,100871,5.60,2,11.20),
(609,1,100861,35.00,1,35.00),
(609,2,100870,2.50,5,12.50),
(609,3,100890,50.00,1,50.00),
(610,1,100860,35.00,1,35.00),
(610,2,100870,2.80,3,8.40),
(610,3,100890,58.00,1,58.00),
(611,1,100861,45.00,1,45.00),
(612,1,100860,30.00,100,3000.00),
(612,2,100861,40.50,20,810.00),
(612,3,101863,10.00,150,1500.00),
(612,4,100871,5.50,100,550.00),
(613,1,100871,5.60,100,560.00),
(613,2,101860,24.00,200,4800.00),
(613,3,200380,4.00,150,600.00),
(613,4,200376,2.20,200,440.00),
(614,1,100860,35.00,444,15540.00),
(614,2,100870,2.80,1000,2800.00),
(614,3,100871,5.60,1000,5600.00),
(615,1,100861,45.00,4,180.00),
(615,2,100870,2.80,100,280.00),
(615,3,100871,5.00,50,250.00),
(616,1,100861,45.00,10,450.00),
(616,2,100870,2.80,50,140.00),
(616,3,100890,58.00,2,116.00),
(616,4,102130,3.40,10,34.00),
(616,5,200376,2.40,10,24.00),
(617,1,100860,35.00,50,1750.00),
(617,2,100861,45.00,100,4500.00),
(617,3,100870,2.80,500,1400.00),
(617,4,100871,5.60,500,2800.00),
(617,5,100890,58.00,500,29000.00),
(617,6,101860,24.00,100,2400.00),
(617,7,101863,12.50,200,2500.00),
(617,8,102130,3.40,100,340.00),
(617,9,200376,2.40,200,480.00),
(617,10,200380,4.00,300,1200.00),
(618,1,100860,35.00,23,805.00),
(618,2,100861,45.11,50,2255.50),
(618,3,100870,45.00,10,450.00),
(619,1,200380,4.00,100,400.00),
(619,2,200376,2.40,100,240.00),
(619,3,102130,3.40,100,340.00),
(619,4,100871,5.60,50,280.00),
(620,1,100860,35.00,10,350.00),
(620,2,200376,2.40,1000,2400.00),
(620,3,102130,3.40,500,1700.00),
(621,1,100861,45.00,10,450.00),
(621,2,100870,2.80,100,280.00);


DROP TABLE IF EXISTS salgrade;
CREATE TABLE salgrade (
  GRADE int DEFAULT NULL,
  LOSAL decimal(7,2) DEFAULT NULL,
  HISAL decimal(7,2) DEFAULT NULL
);


INSERT INTO salgrade VALUES 
(1,700.00,1200.00),
(2,1201.00,1400.00),
(3,1401.00,2000.00),
(4,2001.00,3000.00),
(5,3001.00,9999.00);


ALTER TABLE CUSTOMER
ADD CONSTRAINT PRIMARY KEY (CUSTID);

ALTER TABLE CUSTOMER
ADD CONSTRAINT CUSTOMER_CUSTID_CK CHECK ((CUSTID > 0));

ALTER TABLE DEPT
ADD CONSTRAINT PRIMARY KEY (DEPTNO);

ALTER TABLE EMP
ADD CONSTRAINT PRIMARY KEY (EMPNO);

ALTER TABLE EMP
ADD CONSTRAINT EMP_DEPTNO_FK FOREIGN KEY (DEPTNO) REFERENCES DEPT(DEPTNO);

ALTER TABLE EMP
ADD CONSTRAINT EMP_MGR_FK FOREIGN KEY (MGR) REFERENCES EMP(EMPNO);

ALTER TABLE ORD
ADD CONSTRAINT PRIMARY KEY (ORDID);

ALTER TABLE ORD
ADD CONSTRAINT ORD_CUSTID_FK FOREIGN KEY (CUSTID) REFERENCES CUSTOMER(CUSTID);

ALTER TABLE ORD
ADD CONSTRAINT ORD_TOTAL_CK CHECK ((TOTAL >= 0));

ALTER TABLE PRODUCT
ADD CONSTRAINT PRIMARY KEY (PRODID);

ALTER TABLE ITEM
ADD CONSTRAINT PRIMARY KEY (ORDID, ITEMID);

ALTER TABLE ITEM
ADD CONSTRAINT ITEM_ORDID_FK FOREIGN KEY (ORDID) REFERENCES ORD(ORDID);

ALTER TABLE ITEM
ADD CONSTRAINT ITEM_PRODD_FK FOREIGN KEY (PRODID) REFERENCES PRODUCT(PRODID);