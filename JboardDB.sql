#날짜 : 2023.08.02
#내용 : 게시판 프로젝트 실습

CREATE DATABASE `Jboard`;

# 회원 테이블
CREATE TABLE `User`(
	`uid`			VARCHAR(20) PRIMARY KEY,
	`pass`		VARCHAR(255),
	`name`		VARCHAR(20),
	`nick`		VARCHAR(20) UNIQUE,
	`email`		VARCHAR(50) UNIQUE,
	`hp`			CHAR(13) UNIQUE,
	`role`		VARCHAR(20) DEFAULT 'USER',
	`zip`			CHAR(5),
	`addr1`		VARCHAR(255),farmstoryterms
	`addr2`		VARCHAR(255),
	`regip`		VARCHAR(100),
	`regDate`	DATETIME,
	`leaveDate`	DATETIME
);

# 약관 테이블
CREATE TABLE `Terms`(
	`terms`		TEXT NOT NULL,
	`privacy`	TEXT NOT NULL
);

# 게시물 테이블
CREATE TABLE `Article`(
	`no`			INT AUTO_INCREMENT PRIMARY KEY,
	`parent`		INT DEFAULT 0,
	`comment`	INT DEFAULT 0,
	`cate`		VARCHAR(20) DEFAULT 'free',
	`title`		VARCHAR(255),
	`content`	TEXT NOT NULL,
	`file`		TINYINT DEFAULT 0,
	`hit`			INT DEFAULT 0,
	`writer`		VARCHAR(20) NOT NULL,
	`regip`		VARCHAR(100) NOT NULL,
	`rdate`		DATETIME NOT NULL,
	FOREIGN KEY(`writer`) REFERENCES `User`(`uid`)
);

# 파일 테이블
CREATE TABLE `File`(
	`fno`			INT	AUTO_INCREMENT PRIMARY KEY, # 파일번호
	`ano`			INT	NOT NULL,		 # 파일이 속하는 글번호
	`ofile`	   VARCHAR(255)	NOT NULL, # 원본 파일명
	`sfile`	   VARCHAR(255)	NOT NULL, # 저장 파일명
	`download`	INT	DEFAULT 0,		 # 다운로드 횟수
	`rdate`		DATETIME NOT NULL,	 # 파일 저장일
	FOREIGN KEY(`ano`) REFERENCES `Article`(`no`)
);



SELECT 
	a.*,
	u.nick 
FROM `Article` AS a
JOIN `User` AS u ON a.writer = u.uid
LIMIT 0, 10;

-- 테이블 내용 복사
INSERT INTO `Article`(title,content, writer, regIp, regDate)
SELECT title,content, writer, regIp, regDate FROM `Article`;


-- 전체 게시물 개수
SELECT COUNT(`no`) FROM `Article`;