#날짜 : 2023/06/20
#이름 : 정영재
#내용 : SQL 연습문제1




#실습1-1

CREATE DATABASE `Shop`;
CREATE USER 'admin1'@'%' IDENTIFIED BY '1234';
GRANT ALL PRIVILEGES ON Shop.* TO 'admin1'@'%';
FLUSH PRIVILEGES;

#실습1-2
CREATE TABLE `Customer`(
	`cutid`		VARCHAR(10)			PRIMARY KEY,
	`name`		VARCHAR(10)			NOT NULL,
	`hp` 			VARCHAR(13) 		DEFAULT NULL,
	`shopaddr`	VARCHAR(100)		DEFAULT NULL,
	`rdate`		DATE 					NOT NULL
);

#DROP TABLE `Customer`;
#ALTER TABLE `Customer` CHANGE COLUMN `cutid` `cutId` VARCHAR(10);
#컬럼명 잘못 입력해서 수정함
CREATE TABLE `Product`(

	`prodNo` 	INT				PRIMARY KEY,
	`prodName` 	VARCHAR(10)		NOT NULL,
	`stock`		INT				DEFAULT 0,
	`price`		INT				DEFAULT NULL,	
	`company`	VARCHAR(20)		NOT NULL

);


CREATE TABLE `Order`(

	`orderNo` 		INT			PRIMARY KEY,
	`orderId`		VARCHAR(10)	NOT NULL,
	`orderProduct`	INT			NOT NULL,
	`orderCount`	INT			DEFAULT 1,
	`orderDate`		DATETIME		NOT NULL


);


#실습1-3

INSERT INTO `Customer` VALUES('c101','김유신','010-1234-1001','김해시 봉황동','2022-01-01'	);
INSERT INTO `Customer` VALUES('c102','김춘추','010-1234-1002','경주시 보문동','2022-01-02'	);
INSERT INTO `Customer` VALUES('c103','장보고','010-1234-1003','완도군 청산면','2022-01-03'	);
INSERT INTO `Customer` VALUES('c104','강감찬','010-1234-1004','서울시 마포구','2022-01-04'	);
INSERT INTO `Customer` SET `cutId` = 'c105', `name`= '이성계', `rdate`='2022-01-05';
INSERT INTO `Customer` VALUES('c106','정철'  ,'010-1234-1006','경기도 용인시','2022-01-06'	);
INSERT INTO `Customer` SET `cutId` = 'c107', `name` = '허준', `rdate` = '2022-01-07';
INSERT INTO `Customer` VALUES('c108','이순신','010-1234-1008','서울시 영등포구','2022-01-08');
INSERT INTO `Customer` VALUES('c109','송상현','010-1234-1009','부산시 동래구','2022-01-09'	);
INSERT INTO `Customer` VALUES('c110','정약용','010-1234-1010','경기도 광주시','2022-01-10'	);


INSERT INTO `Product` VALUES(1,'새우깡',5000,1500,'농심');
INSERT INTO `Product` VALUES(2,'초코파이',2500,2500,'오리온');
INSERT INTO `Product` VALUES(3,'포카칩',3600,1700,'오리온');
INSERT INTO `Product` VALUES(4,'양파링',1250,1800,'농심');
INSERT INTO `Product` SET `prodNo` = 5, `prodName`='죠리퐁', `stock`='2200', `company`='크라운';
INSERT INTO `Product` VALUES(6,'마가렛트',3500,3500,'롯데');
INSERT INTO `Product` VALUES(7,'뿌셔뿌셔',1650,1200,'오뚜기');


INSERT INTO `Order` VALUES (1,  'c102', 3, 2, '2022-07-01 13:15:10');
INSERT INTO `Order` VALUES (2,  'c101', 4, 1, '2022-07-01 14:16:11');
INSERT INTO `Order` VALUES (3,  'c108', 1, 1, '2022-07-01 17:23:18');
INSERT INTO `Order` VALUES (4,  'c109', 6, 5, '2022-07-02 10:46:36');
INSERT INTO `Order` VALUES (5,  'c102', 2, 1, '2022-07-03 09:15:37');
INSERT INTO `Order` VALUES (6,  'c101', 7, 3, '2022-07-03 12:35:12');
INSERT INTO `Order` VALUES (7,  'c110', 1, 2, '2022-07-03 16:55:36');
INSERT INTO `Order` VALUES (8,  'c104', 2, 4, '2022-07-04 14:23:23');
INSERT INTO `Order` VALUES (9,  'c102', 1, 3, '2022-07-04 21:54:34');
INSERT INTO `Order` VALUES (10, 'c107', 6, 1, '2022-07-05 14:21:03');


#DROP TABLE `Order`;


SELECT * FROM `Order`;
SELECT * FROM `Product`;



#실습1-4
SELECT * FROM `Customer`;


#실습1-5
SELECT `hp`, `name`, `cutId` FROM `Customer`;


#실습1-6

SELECT * FROM `Product`;


#실습1-7

SELECT `company` FROM `Product`;

#실습1-8
SELECT DISTINCT `company` FROM `Product`;
#DISTINCT 를 통해 중복 데이터 없이 출력이 가능하다.


#실습1-9
SELECT `company`, `price` FROM `Product`;

#실습1-10
SELECT `prodName`, `price`+ 500  AS '조정단가' FROM `product`;

#실습1-11
SELECT `prodName`,`stock`, `price` FROM `product` WHERE `company` = '오리온';

#실습1-12
SELECT `orderProduct`, `orderCount`, `orderDate` FROM `Order`  WHERE `orderId` = 'c102';



#실습1-13

SELECT `orderProduct`, `orderCount`, `orderDate` 
FROM `Order` WHERE `orderId` = 'c102'
AND	`orderCount` >= 2;



#실습1-14

SELECT * FROM `Product` WHERE `price` >= 1000 AND `price` <= 2000;

#SELECT * FROM `Product` WHERE `price` BETWEEN 1000 AND 2000;

#SELECT * FROM `Product` WHERE  1000 <= `price` <=2000; 이런식으로 하면 뒤의 <=2000는 무시된채로 결과가 출력된다.

#실습1-15
SELECT `cutid`, `name`, `hp`,`shopaddr` FROM `Customer` WHERE `name` LIKE '김%';




#실습1-16
SELECT `cutid`, `name`, `hp`, `shopaddr` FROM `Customer` WHERE `name` LIKE '__';


#실습1-17
SELECT * FROM `Customer` WHERE `hp` IS NULL;


#실습1-18
SELECT * FROM `Customer` WHERE `shopaddr` IS NOT NULL;


#실습1-19

SELECT * FROM `Customer` ORDER BY `rdate`  DESC;

#실습1-20
SELECT * FROM  `Order` WHERE `orderCount` >= 3 
ORDER BY `orderCount` DESC, `orderProduct` ASC;


#실습1-21
SELECT AVG(`price`) 	FROM `Product`;



#실습1-22
SELECT SUM(`stock`) AS`재고량 합계` FROM `Product` WHERE `company` = '농심';


#실습1-23

SELECT COUNT(`cutid`) AS `고객수` FROM `Customer`;


#실습1-24

SELECT COUNT(DISTINCT `company`) AS `제조업체 수` FROM `Product`;


#실습1-25

SELECT `orderProduct` AS `주문 상품번호`, SUM(`orderCount`) AS `총 주문수량` FROM
`Order` GROUP BY `orderProduct` ORDER BY `주문 상품번호` ; 



#실습1-26
SELECT `company` AS `제조업체`, COUNT(*) AS `제품수`, MAX(`price`) AS `최고가` FROM
`Product` GROUP BY `company` ORDER BY `제조업체`;

#실습1-27
SELECT `company` AS `제조업체`, COUNT(*) AS `제품수`, MAX(`price`) AS `최고가` FROM
`Product` GROUP BY `company` HAVING `제품수` >=2;
# WHERE은 반드시 GROUP BY 전에 나와야 한다(규칙). 때문에 HAVING을 사용한다.


#실습1-28

SELECT `orderProduct`, `orderId`, SUM(`orderCount`) AS `총 주문수량` FROM `Order`
GROUP BY `orderProduct`, `orderId` ORDER BY `orderProduct` ASC;


#실습1-29
SELECT a.orderId, b.prodName 
FROM 
`Order` AS a JOIN `Product` AS b
ON a.orderProduct = b.prodNo
WHERE `orderid` = 'c102';


# 걍 혼자 join연습
SELECT a.orderId, a.orderCount, a.orderProduct FROM `Customer` AS b
JOIN `Order` AS a
ON b.cutid = a.orderId
WHERE `cutid` = 'c102';



#실습1-30
SELECT `orderid`, `name`, `prodName`, `orderDate` FROM `Order` AS a
JOIN `Customer` AS b
ON a.orderId = b.cutid
JOIN `Product` AS c
ON a.orderProduct = c.prodNo
WHERE SUBSTR(`orderDate`, 1, 10) = '2022-07-03';

#SUBSTR STARTNUMBER 1부터 10까지 입력하고 나머지를 자른다. -도 1개

