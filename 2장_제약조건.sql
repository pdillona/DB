##날짜: 2023/06/16
#이름: 정영재
#내용: 2장 테이블 제약조건 실습하기


#실습 2-1
CREATE TABLE `User2` (
	`uid`	 	VARCHAR(10) PRIMARY KEY,
	`name` 	VARCHAR(10),
	`hp` 		CHAR(13),
	`age` 	INT	);
	
#실습 2-2
INSERT INTO `User2` VALUES('A101','김유신','010-1234-1001','23');
INSERT INTO `User2` VALUES('A102','김춘추','010-1234-1002','21');
INSERT INTO `User2` VALUES('A103','장보고','010-1234-1003','31');
INSERT INTO `User2` VALUES('A104','강감찬','010-1234-1001','41');

DELETE FROM `User2` WHERE `age` = '41';


SELECT * FROM `User2`;

	
#실습 2-3	
CREATE TABLE `User3` (
	`uid` 	VARCHAR(10) PRIMARY KEY,
	`name` 	VARCHAR(10),
	`hp` 		CHAR(13) 	UNIQUE,
	`age` 	INT
);	
	
	

#실습 2-4
INSERT INTO `User3` VALUES('A101','김유신','010-1234-1001','23');
INSERT INTO `User3` (`uid`, `name`, `hp`, `age`) VALUES ('A102','김춘추','010-1234-1002','21');
INSERT INTO `User3` SET
				`uid`  	= 'A103',
            `name` 	= '장보고',
            `hp`	= '010-1234-1003',
            `age` 	= '31';
            
INSERT INTO `User3` VALUES('A104','강감찬','010-1234-1001','41');   
# 전화 번호 중복 UNIQUE를 걸었기 때문에 DUPLICATION 에러가 뜬다.         
# CTRL + D를 눌러 아래로 한줄 복사 가능 워크밴치에서만 유효한 복사법             

INSERT INTO `User3` (`uid`, `name`, `age`) VALUES ('A104','강감찬','41');
INSERT INTO `User3` (`uid`, `name`, `age`) VALUES ('A105','이순신','51');
#UNIQUE는 NULL 값을 허용 하나 중복을 허용하지 않는다.

SELECT *FROM `User3`;



#실습 2-5
CREATE TABLE `Parent`(
		`pid` 	VARCHAR(10) PRIMARY KEY,
		`name` 	VARCHAR(10),
   	`hp`		CHAR(13) 	UNIQUE
);

CREATE TABLE `Child`(
	`cid`		VARCHAR(10) PRIMARY KEY,
   `name`	VARCHAR(10),
   `hp`		CHAR(13) UNIQUE,
   `pid`		VARCHAR(10),
	FOREIGN KEY (`pid`) REFERENCES `parent` (`pid`)
);

#실습 2-6
INSERT INTO `Parent` VALUES('p101','홍길동','010-1234-1001');
INSERT INTO `Parent` VALUES('p102','임꺽정','010-1234-1002');
INSERT INTO `Parent` VALUES('p103','이성계','010-1234-1003');

SELECT * FROM `Parent`;


INSERT INTO `Child` VALUES('C101','홍길남','010-1234-2001','P101');
#INSERT INTO `Child` VALUES('C101','홍길남','010-1234-2001','P104'); P104 때문에 INSERT불가
# CHILD의 pid는 PARENT의 pid를 참조 하고 있기 때문에 없는 P104를 참조 하려하니 당연히 INSERT 되지 않는다.
INSERT INTO `Child` VALUES('C102','임철수','010-1234-2002','P102');
INSERT INTO `Child` VALUES('C103','이방원','010-1234-2003','P103');
INSERT INTO `Child` VALUES('C104','홍길여','010-1234-2004','P101');

#실습 2-7
CREATE TABLE `User4` (
	`seq` 		INT 			AUTO_INCREMENT PRIMARY KEY,
	`name`		VARCHAR(10),
	`gender`		TINYINT,
	`age`			INT,
	`addr` 		VARCHAR(255)
);



#실습 2-8
INSERT INTO `User4` (`name`,`gender`,`age`,`addr`) VALUES('김유신', 1, 23, '김해시');

#실습 2-9
CREATE TABLE `User5`(
	`name` 	VARCHAR(10) NOT NULL,
	`gender` TINYINT,
	`agg` 	INT DEFAULT 1,
	`addr` 	VARCHAR(10)

);
#기본 적으로 컬럼들은 DEFAULT 값이 NULL로 설정되 있음 
#NOT NULL을 하면 DEFAULT값이 NULL이 될 수 없음


#실습 2-10
INSERT INTO `User5` VALUES('김유신', 1 , 23,'김해시');
INSERT INTO `User5` (`name`,`addr`)VALUES('김춘추','경주시');
INSERT INTO `User5` SET `name` = '신사임당', `gender` = 2 , `addr` = '강릉시';


#실습 2-11
ALTER TABLE `User5` ADD `hp` VARCHAR(20);


#테이블에 컬럼을 추가
ALTER TABLE `User5` ADD `birth` CHAR(10) DEFAULT '0000-00-00' AFTER name;

SELECT * FROM `User5`;


#실습 2-12
ALTER TABLE `User5` MODIFY `hp` CHAR(13);
ALTER TABLE `User5` MODIFY `agg` TINYINT; #age를 agg라고 쳐만들어 놔서 에러남;;;



#실습 2-13
ALTER TABLE `User5` CHANGE COLUMN `addr` `address` VARCHAR(100);



#실습 2-14
ALTER TABLE `User5` DROP `gender`;



#실습 2-15
CREATE TABLE `User6` LIKE `User5`; #데이터는 복사 안되고 껍데기만 복사된다.

SELECT * FROM `User6`; 




#실습 2-16
INSERT INTO `User6` SELECT * FROM `User5`; # 6에 5의 데이터를 복사해 온다.	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	