#날짜: 2023/06/16
#이름: 정영재
#내용: 4장 SQL 고급

#실습 4-1
CREATE TABLE `Member` (
	`uid` 	VARCHAR(10) 	PRIMARY KEY,
    `name` 	VARCHAR(10) 	NOT NULL,
    `hp` 	CHAR(13) 		UNIQUE NOT NULL,
    `pos`	VARCHAR(10) 	DEFAULT '사원',
    `dep`	INT,
    `rdate`	DATETIME 		NOT NULL
);


CREATE TABLE `Department`(
	`depNo` TINYINT 	PRIMARY KEY,
    `name` 	VARCHAR(10) NOT NULL,
    `tel`	CHAR(13) 	NOT NULL
);

DROP TABLE `Department`;

CREATE TABLE `Sales`(
	`seq` 	INT AUTO_INCREMENT	PRIMARY KEY,
    `uid` 	VARCHAR(10) 		NOT NULL,
    `year` 	YEAR NOT 			NULL,
    `month`	TINYINT 			NOT NULL,
    `sale`	INT 				NOT NULL
);

SELECT * FROM `Sales`;

#실습 4-2
INSERT INTO `Member` VALUES ('a101', '박혁거세', '010-1234-1001', '부장', 101, '2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a102', '김유신', '010-1234-1002', '차장', 101, '2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a103', '김춘추', '010-1234-1003', '사원', 101, '2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a104', '장보고', '010-1234-1004', '대리', 102, '2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a105', '강감찬', '010-1234-1005', '과장', 102, '2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a106', '이성계', '010-1234-1006', '차장', 103, '2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a107', '정철', '010-1234-1007', '차장', 103, '2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a108', '이순신', '010-1234-1008', '부장', 104, '2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a109', '허균', '010-1234-1009', '부장', 104, '2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a110', '정약용', '010-1234-1010', '사원', 105, '2023-06-15 16:22:13');
INSERT INTO `Member` VALUES ('a111', '박지원', '010-1234-1011', '사원', 105, '2023-06-15 16:22:13');

INSERT INTO `Department` VALUES (101, '영업1부', '051-512-1001');
INSERT INTO `Department` VALUES (102, '영업2부', '051-512-1002');
INSERT INTO `Department` VALUES (103, '영업3부', '051-512-1003');
INSERT INTO `Department` VALUES (104, '영업4부', '051-512-1004');
INSERT INTO `Department` VALUES (105, '영업5부', '051-512-1005');
INSERT INTO `Department` VALUES (106, '영업지원부', '051-512-1006');
INSERT INTO `Department` VALUES (107, '인사부', '051-512-1007');

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 1,  98100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 1, 136000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 1,  80100);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2018, 1,  78000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 1,  93000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2018, 2,  23500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2018, 2, 126000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2018, 2,  18500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2018, 2,  19000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2018, 2,  53000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a101', 2019, 1,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 1, 109000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 1, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 1,  53500);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2019, 1,  24000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2019, 2, 160000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2019, 2, 101000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2019, 2,  43000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2019, 2,  24000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2019, 2, 109000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 1, 201000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 1,  63000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 1,  74000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a106', 2020, 1, 122000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a107', 2020, 1, 111000);

INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a102', 2020, 2, 120000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a103', 2020, 2,  93000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a104', 2020, 2,  84000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a105', 2020, 2, 180000);
INSERT INTO `Sales` (`uid`, `year`, `month`, `sale`) VALUES ('a108', 2020, 2,  76000);



#실습 4-3
SELECT*FROM `Member` WHERE `name` = '김유신';
SELECT*FROM `Member` WHERE `pos` = '차장' AND `dep` = 101;

SELECT*FROM `Member` WHERE `name` != '김춘추';
SELECT*FROM `Member` WHERE `name` <> '김춘추';
#  <> 는 != 와 같은 의미를 가진다. 

SELECT * FROM `Member` WHERE `pos` = '사원' OR `pos` = '대리';
SELECT * FROM `Member` WHERE `pos` IN('사원','대리');

SELECT * FROM `Member` WHERE `name` LIKE '%신';
#신으로 끝나는  %를 와일드 카드라고 부른다.
SELECT * FROM `Member` WHERE `name` LIKE '김%';
SELECT * FROM `Member` WHERE `name` LIKE '김__';
SELECT * FROM `Member` WHERE `name` LIKE '_성_';
SELECT * FROM `Member` WHERE `name` LIKE '정_';
#정으로 시작하는 이름이 두자인 데이터를 찾는다. 즉 _는 자릿수를 의미한다.

SELECT * FROM `Sales` WHERE `sale` > 50000;
SELECT * FROM `Sales` WHERE `sale` >= 50000 AND `sale` < 100000 AND `month` = 1;
SELECT * FROM `Sales` WHERE `sale` BETWEEN 50000 AND 100000;
SELECT * FROM `Sales` WHERE `year` IN(2020);
SELECT * FROM `Sales` WHERE `month` IN(1,2);


#실습 4-4
SELECT * FROM `Sales` ORDER BY `sale`; #안적으면 오름차순이 생략되 있다 보면된다.
SELECT * FROM `Sales` ORDER BY `sale` ASC; #오름차순 정렬
SELECT * FROM `Sales` ORDER BY `sale` DESC; #내림차순 정렬

SELECT * FROM `Sales` 
WHERE `sale` > 50000
ORDER BY `sale` DESC;

SELECT * FROM `Sales`
WHERE `sale` > 50000
ORDER BY
	`year`, #안적으면 오름차순이 생략되 있다 보면된다.
	`month`,
	`sale` DESC;



#실습 4-5
SELECT * FROM `Sales` LIMIT 3;
SELECT * FROM `Sales` LIMIT 0,3;
#START 값   LENGTH 값

SELECT * FROM Sales LIMIT 1, 2;
SELECT * FROM Sales LIMIT 5, 3;
SELECT * FROM Sales ORDER BY `sale` DESC LIMIT 3, 5;
SELECT * FROM Sales WHERE `sale` < 50000 ORDER BY `sale` DESC LIMIT 3;
SELECT * FROM Sales 
 WHERE `sale` > 50000 
 ORDER BY `year` DESC, `month`, `sale` DESC
 LIMIT 5;
			

#실습 4-6

SELECT SUM(sale) AS `합계` FROM `Sales`;
SELECT AVG(sale) AS `평균` FROM `Sales`;
SELECT MAX(sale) AS `최대값` FROM `Sales`;
SELECT MIN(sale) AS `최소값` FROM `Sales`;
SELECT COUNT(sale) AS `갯수` FROM `Sales`;
SELECT COUNT(*) AS `갯수` FROM `Sales`;
SELECT SUBSTRING(hp, 10, 4) AS '전화번호 끝자리' FROM `Member`;
INSERT INTO `Member` VALUES ('b101', '을지문덕', '010-5555-1234', '사장', 107, NOW());



#실습 4-7
SELECT 
	SUM(`sale`) AS `총합`
FROM 
	`Sales`
WHERE
	`year` = 2018 AND `month` = 1;




#실습 4-8
SELECT SUM(`sale`) AS `총합`,
		 AVG(`sale`) AS `평균`	
FROM	
`Sales`
WHERE	
	`year` = 2019 
	AND 
	`month` = 2 
	AND
	`sale` >=  50000;





#실습 4-9
#GROUP BY 데이터를 그룹으로 조회, 데이터의 집계를 위해 사용






#실습 4-10
SELECT VERSION(); #DBMS버전 확인하는 쿼리 결과: 8.0.33
	
SELECT `uid` FROM `Sales` GROUP BY `uid`;
# 8.0.33 버전부터 단순 그룹으로 그룹핑 안되고 칼럼을 정확히 적어 줘야한다.
#컬럼이 중복없이 조회 가능

SELECT `year` FROM `Sales` GROUP BY `year`;

SELECT `uid`,`year` FROM  `Sales` GROUP BY `uid`, `year`;

SELECT `uid`, `year`, SUM(`sale`) AS'합계' #ID 연도 합계 AS로 컬럼일시 생성
FROM `Sales` 
GROUP BY `uid`, `year`;


SELECT 
	`uid`,
	`year`,
	SUM(`sale`) AS '합계'
FROM 
	`Sales`
WHERE
	`sale` >= 50000
GROUP BY 
	`uid`, `year`
ORDER BY 
	`합계` DESC;




#실습 4-11

SELECT 
	`uid`,
	`year`,
	SUM(`sale`) AS '합계'
FROM 
	`Sales`
WHERE
	`sale` >= 50000
GROUP BY 
	`uid`, `year`
HAVING
	`합계` >= 200000
ORDER BY 
	`합계` DESC;




#실습 4-12
CREATE TABLE `Sales2` LIKE `Sales`; #테이블복사
INSERT INTO `Sales2` SELECT * FROM `Sales`;
UPDATE `Sales2` SET `year` = `year` + 3;


SELECT * FROM `Sales2`;

SELECT * FROM `Sales`
UNION
SELECT * FROM `Sales2`;

#가독성을 위한 () 묶음
(SELECT * FROM `Sales`)
UNION
(SELECT * FROM `Sales2`);



SELECT `uid`, `year`, `sale` FROM `Sales`
UNION
SELECT `uid`, `year`, `sale` FROM `Sales2`;


SELECT `uid`, `year`, SUM(sale) AS '합계'
FROM `sales`
GROUP BY `uid`, `year`
UNION
SELECT `uid`, `year`, SUM(sale) AS'합계'
FROM `Sales2`
GROUP BY `uid`, `year`
ORDER BY `year` ASC, '합계' DESC;



#실습 4-13

#이너조인



SELECT * FROM `Sales` 
INNER JOIN `Member` 
ON `Sales`.uid = `Member`.uid;
#INNER는 일반적으로 생략 한다. 
#항상 결과 값에서 왼쪽의 테이블이 기준이된다.
#아이디 컬럼을 매칭해서 데이터를 합침, 항상 같은 컬럼을 이용해서 합쳐 줘야 한다.

SELECT * FROM `Member`
INNER JOIN `Department`
ON `Member`.dep = `Department`.depNo;

#289번 라인과 결과론 같음 별칭만들어 쓰는 것만다름
SELECT * FROM `Sales` AS a # AS a는 별칭?
JOIN `Member` AS b
ON a.uid = b.uid;


SELECT * FROM `Member` AS a
JOIN `Department` AS b
ON a.dep = b.depNo;

# JOIN문의 다른 형태
SELECT * FROM `Sales` AS a, `Member` AS b
WHERE a.uid = b.uid;


SELECT * FROM `Member` AS a, `Department` AS b 
WHERE a.dep = b.depNo;


#SELECT `seq`,`uid`,`sale`,`name`,`pos`  도가능
SELECT a.`seq`,a.`uid`,a.`sale`,b.`name`,b.`pos`
FROM `Sales` AS a
JOIN `Member` AS b
USING(`uid`); 
#ON a.uid = b.uid; 도가능
#on 조인의 조건 을 건다.

SELECT a.`seq`,a.`uid`,a.`sale`,b.`name`,b.`pos`
FROM `Sales` AS a
JOIN `Member` AS b
ON a.uid = b.uid
WHERE `sale` >= 100000;




SELECT * FROM `Sales`  AS a
JOIN `Member` AS b ON a.uid = b.uid
JOIN `Department` AS c ON b.dep = c.depNo;


#LEFT JOIN, RIGHT JOIN 외부조인(교집합 기준 왼쪽 오른쪽 둘중 선택)


SELECT a.`seq`, a.`uid`, a.`sale`, b.`name`, b.`pos`, c.`name` FROM `Sales` AS a 
 JOIN `Member` AS b ON a.uid = b.uid
 JOIN `Department` AS c ON b.dep = c.depNo
 WHERE `sale` > 100000
 ORDER BY `sale` DESC;


INSERT INTO `Sales`(`uid`,`year`,`month`,`sale`) 
		VALUES('p101',2018,1,35000);



#실습 4-14
SELECT * FROM `Sales` AS a
LEFT JOIN `Member` AS b
ON a.uid = b.uid;
#매칭시 조회 되지 않는 데이터 값은 null이 된다.


SELECT * FROM `Sales` AS a
RIGHT JOIN `Member` AS b
ON a.uid = b.uid;


#LEFT RIGHT 의 두 쿼리를 실행해 보니 기준되는 왼쪽 데이터가 없는 오른쪽 데이터는 나오지 않으며  오른쪽 데이터가 없어도 기준되는 테이블의 데이터는 출력이된다. 다만 이때 컬럼에 데이터가 없는 부분은 NULL이 입력된다.

SELECT a.seq, a.uid, `sale`, `name`, `pos` FROM Sales AS a 
 LEFT JOIN Member AS b USING(uid);
 
SELECT a.seq, a.uid, `sale`, `name`, `pos` FROM Sales AS a 
 RIGHT JOIN Member AS b USING(uid);


#실습 4-15
SELECT 
	`uid`,
	a.`name`,
	`pos`,
	b.`name`
FROM `Member` AS a
JOIN `Department` AS b
ON a.dep = b.depNo;

#SELECT 
#	`uid`,
#	`name`,
#	`pos`,
#	`name`
# 위 의 경우 name이 같기 때문에 ambiguous 에러가남 그래서 어디 것 인지 확실히 해 줄 필요가 있다.



#실습 4-16

SELECT `name`, SUM(`sale`) AS '매출합'
FROM `Sales` AS a 
JOIN `Member` AS b
ON a.uid = b.uid
WHERE `name` = '김유신' AND `year` = 2019
GROUP BY `year`;

 





#실습 4-17
select 
	b.`name` AS `직원명`,
   c.`name` AS `부서명`,
   b.`pos`  AS `직급`,
   a.`year` AS `년도`,    
   SUM(`sale`) as `매출합`
from `Sales`      a
join `Member`     b on a.uid = b.uid
join `Department` c on b.dep = c.depNo
where `year`=2019 and `sale` >= 50000
group by a.`uid`
having `매출합` >= 100000
order by `매출합` DESC;






