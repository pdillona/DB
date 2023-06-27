INSERT INTO `Students` SET `stdNo` = '20101001', `depNo`=10, proNo='P10101', `stdName`='정우성', `stdJumin`='760121-1234567', `stdHp`='010-1101-7601', `stdAddr`='서울';
INSERT INTO `Students` SET `stdNo` = '20101002', `depNo`=10, proNo='P10101', `stdName`='이정재', `stdJumin`='750611-1234567', `stdHp`='010-1102-7506', `stdAddr`='서울';
INSERT INTO `Students` SET `stdNo` = '20111011', `depNo`=11, proNo='P11103', `stdName`='전지현', `stdJumin`='890530-1234567', `stdHp`='010-1103-8905', `stdEmail`='jjh@naver.com',`stdAddr`='대전';
INSERT INTO `Students` SET `stdNo` = '20111013', `depNo`=11, proNo='P11103', `stdName`='이나영', `stdJumin`='790413-1234567', `stdHp`='010-2101-7904', `stdEmail`='lee@naver.com',`stdAddr`='대전';
INSERT INTO `Students` SET `stdNo` = '20111014', `depNo`=11, proNo='P11104', `stdName`='원빈'  , `stdJumin`='660912-1234567', `stdHp`='010-2104-6609', `stdEmail`='one@daum.net',`stdAddr`='대전';
INSERT INTO `Students` SET `stdNo` = '21221010', `depNo`=22, proNo='P22110', `stdName`='장동건', `stdJumin`='790728-1234567', `stdHp`='010-3101-7907', `stdEmail`='jang@naver.com',`stdAddr`='대구';
INSERT INTO `Students` SET `stdNo` = '21231002', `depNo`=23, proNo='P23102', `stdName`='고소영', `stdJumin`='840615-1234567', `stdHp`='010-4101-8406', `stdEmail`='goso@daum.net',`stdAddr`='대구';
INSERT INTO `Students` SET `stdNo` = '22311011', `depNo`=31, proNo='P31104', `stdName`='김연아', `stdJumin`='651021-1234567', `stdHp`='010-5101-6510', `stdEmail`='yuna@daum.net',`stdAddr`='대구';
INSERT INTO `Students` SET `stdNo` = '22311014', `depNo`=31, proNo='P31104', `stdName`='유재석', `stdJumin`='721128-1234567', `stdHp`='010-6101-7211', `stdAddr`='부산';
INSERT INTO `Students` SET `stdNo` = '22401001', `depNo`=40, proNo='P40101', `stdName`='강호동', `stdJumin`='920907-1234567', `stdHp`='010-7103-9209', `stdAddr`='부산';
INSERT INTO `Students` SET `stdNo` = '22401002', `depNo`=40, proNo='P40101', `stdName`='조인성', `stdJumin`='891209-1234567', `stdHp`='010-7104-8912', `stdEmail`='join@gmail.com',`stdAddr`='광주';
INSERT INTO `Students` SET `stdNo` = '22421003', `depNo`=42, proNo='P42103', `stdName`='강동원', `stdJumin`='770314-1234567', `stdHp`='010-8101-7703', `stdEmail`='dong@naver.com',`stdAddr`='광주';





INSERT INTO `Departments` VALUES(10,'국어국문학과','051-510-1010');
INSERT INTO `Departments` VALUES(11,'영어영문학과','051-510-1011');
INSERT INTO `Departments` VALUES(20,'경영학과','051-510-1020');
INSERT INTO `Departments` VALUES(21,'경제학과','051-510-1021');
INSERT INTO `Departments` VALUES(22,'정치외교학과','051-510-1022');
INSERT INTO `Departments` VALUES(23,'사회복지학과','051-510-1023');
INSERT INTO `Departments` VALUES(30,'수학과','051-510-1030');
INSERT INTO `Departments` VALUES(31,'통계학과','051-510-1031');
INSERT INTO `Departments` VALUES(32,'생명과학과','051-510-1032');
INSERT INTO `Departments` VALUES(40,'기계공학과','051-510-1040');
INSERT INTO `Departments` VALUES(41,'전자공학과','051-510-1041');
INSERT INTO `Departments` VALUES(42,'컴퓨터공학과','051-510-1042');

#DELETE FROM `Departments` WHERE `depNo` = 43;


INSERT INTO `Professors` VALUES('P10101',10,'김유신','750120-1234567','010-1101-1976','kimys@hg.ac.kr','서울');
INSERT INTO `Professors` VALUES('P10102',10,'계백','740610-1234567','010-1102-1975','gaeback@hg.ac.kr','서울');
INSERT INTO `Professors` VALUES('P11101',11,'김관창','880529-1234567','010-1103-1989','kwanch@hg.ac.kr','대전');
INSERT INTO `Professors` VALUES('P11103',11,'김춘추','780412-1234567','010-2101-1979','kimcc@hg.ac.kr','대전');
INSERT INTO `Professors` VALUES('P11104',11,'이사부','650911-1234567','010-2104-1966','leesabu@hg.ac.kr','대전');
INSERT INTO `Professors` VALUES('P22110',22,'장보고','780727-1234567','010-3101-1979','jangbg@hg.ac.kr','대구');
INSERT INTO `Professors` VALUES('P23102',23,'선덕여왕','830614-1234567','010-4101-1984','gueen@hg.ac.kr','대구');
INSERT INTO `Professors` VALUES('P31101',31,'강감찬','641020-1234567','010-5101-1965','kang@hg.ac.kr','대구');
INSERT INTO `Professors` VALUES('P31104',31,'신사임당','711127-1234567','010-6101-1972','sinsa@hg.ac.kr','부산');
INSERT INTO `Professors` VALUES('P40101',40,'이이','910906-1234567','010-7103-1992','leelee@hg.ac.kr','부산');
INSERT INTO `Professors` VALUES('P40102',40,'이황','881208-1234567','010-7104-1989','hwang@hg.ac.kr','광주');
INSERT INTO `Professors` VALUES('P42103',42,'송상현','760313-1234567','010-8101-1977','ssh@hg.ac.kr','광주');



INSERT INTO `Lectures` VALUES('101001','P10101','대학 글쓰기',2,10,'본102');
INSERT INTO `Lectures` VALUES('101002','P10102','한국어음운론',3,30,'본102');
INSERT INTO `Lectures` VALUES('101003','P10102','한국현대문학사',3,30,'본103');
INSERT INTO `Lectures` VALUES('111011','P11103','중세영문학',3,25,'본201');
INSERT INTO `Lectures` VALUES('111012','P11104','영미시',3,25,'본201');
INSERT INTO `Lectures` VALUES('231110','P23102','사회복지학개론',1,8,'별관103');
INSERT INTO `Lectures` VALUES('311002','P31101','통계학의 이해',2,16,'별관303');
INSERT INTO `Lectures` VALUES('311003','P31104','기초 통계학',3,26,'별관303');
INSERT INTO `Lectures` VALUES('401019','P40101','기계역학',3,36,'공학관 102');
INSERT INTO `Lectures` VALUES('421012','P42103','데이터베이스',3,32,'공학관 103');




INSERT INTO `Register` SET `stdNo`='20101001',`lecNo`='101001',`proNo`='P10101';
INSERT INTO `Register` SET `stdNo`='20101001',`lecNo`='101002',`proNo`='P10102';
INSERT INTO `Register` SET `stdNo`='20111013',`lecNo`='111011',`proNo`='P11103';
INSERT INTO `Register` SET `stdNo`='21231002',`lecNo`='231110',`proNo`='P23102';
INSERT INTO `Register` SET `stdNo`='22401001',`lecNo`='401019',`proNo`='P40101';
INSERT INTO `Register` SET `stdNo`='22401001',`lecNo`='421012',`proNo`='P42103';
INSERT INTO `Register` SET `stdNo`='20101001',`lecNo`='101003',`proNo`='P10102';
INSERT INTO `Register` SET `stdNo`='22421003',`lecNo`='311003',`proNo`='P31104';
INSERT INTO `Register` SET `stdNo`='22421003',`lecNo`='421012',`proNo`='P42103';
INSERT INTO `Register` SET `stdNo`='20111013',`lecNo`='111012',`proNo`='P11104';





#1
SELECT `stdNo`, `stdName`, `stdHp`, a.depNo, b.depName 
FROM `Students`AS a JOIN `Departments` AS b 
ON a.depNo = b.depNo;
#a.~~일때 백틱쓰지마라

#2
SELECT `proNo`, `proName`, `proHp` , a.depNo, b.depName  
FROM`Professors`AS a JOIN `Departments` AS b
ON a.depNo = b.depNo;
 

#3

SELECT   `lecNo`, `lecName`, `proName`, `proHp` 
FROM `Lectures` AS a JOIN `Professors` AS b
ON a.proNo = b.proNo;



#4

SELECT `lecNo`, `leCName`, `proName`, `proHp` ,c.depNo,`depName`   
FROM `Lectures` AS a JOIN `Professors` AS b
ON a.proNo = b.proNo
JOIN `Departments` AS c
ON b.depNo = c.depNo;



#5

SELECT `stdHp`, `stdName`,a.lecNo,`proHp`,`proName`, a.stdNo, `lecName`
FROM `Register` AS a JOIN `Students` AS b
ON b.stdNo = a.stdNo
JOIN `Lectures` AS c
ON a.lecNo = c.lecNo
JOIN `Professors` AS d
ON a.proNo = d.proNo;





#6
UPDATE `Register` SET
							`regAttenScore` = CEIL(RAND() * 100),
							`regMidScore`   = CEIL(RAND() * 100),
							`regFinalScore` = CEIL(RAND() * 100);

#RAND()랜덤함수: 0과 1 사이의 임의의 부동 소수점 숫자를 반환.
#즉 0.~~~~~~ 이나왔고 0.7454646654라 가정->  74.54~~  -> ceil로 75로 반환.
#CEIL(); 올림 

SELECT * FROM register;

#7
UPDATE `Register` SET
							`regTotal` = (`regAttenScore`+ `regMidScore`+`regFinalScore`)/3;




#8
UPDATE `Register` SET
							`regGrade` = if(`regTotal` >=90, 'A',
											 if(`regTotal` >=80, 'B',
											 if(`regTotal` >=70, 'C',
											 if(`regTotal` >=60, 'D','F'))));


#9
SELECT `regTotal` FROM `Register` ORDER BY `regTotal` DESC LIMIT 1;


#10
SELECT AVG(`regTotal`)
FROM `Register` AS a
JOIN `Students` AS b ON a.stdNo = b.stdNo
WHERE `stdName` = '정우성';
