#날짜 : 2023.08.02
#내용 : 게시판 프로젝트 실습

CREATE DATABASE `Jboard`;

CREATE TABLE `User`(
	`uid`			VARCHAR(20) PRIMARY KEY,
	`pass`		VARCHAR(255),
	`name`		VARCHAR(20),
	`nick`		VARCHAR(20) UNIQUE,
	`email`		VARCHAR(50) UNIQUE,
	`hp`			CHAR(13) UNIQUE,
	`role`		VARCHAR(20) DEFAULT 'USER',	-- 권한
	`zip`			CHAR(20),
	`addr1`		VARCHAR(255),
	`addr2`		VARCHAR(255),
	`regIp`		VARCHAR(100),
	`regDate`	DATETIME,
	`leaveDate`	DATETIME
);

CREATE TABLE `Article`(
	`no`			INT AUTO_INCREMENT PRIMARY KEY,
	`parent`		INT DEFAULT 0, 						-- 댓글
	`comment`	INT DEFAULT 0,
	`cate`		VARCHAR(10) DEFAULT 'free',		-- 카테고리
	`title`		VARCHAR(255),							-- 댓글은 제목 없으니깐 null 허용한다네
	`content`	TEXT NOT NULL,
	`file`		TINYINT DEFAULT 0,
	`hit`			INT DEFAULT 0,							-- 조회수
	`writer`		VARCHAR(20) NOT NULL,
	`regIp`		VARCHAR(100) NOT NULL,
	`regDate`	DATETIME NOT NULL,
	FOREIGN KEY (`writer`) REFERENCES `User`(`uid`)
);

CREATE TABLE `File`(
	`fno`			INT AUTO_INCREMENT PRIMARY KEY,
	`ano`			INT NOT NULL,						-- 글 번호
	`oriName`	VARCHAR(255) NOT NULL,			-- 원래 파일명
	`newName`	VARCHAR(255) NOT NULL,			-- 파일명 중복안되게 새 이름 지정
	`download`	INT	DEFAULT 0,					-- ????
	`regDate`	DATETIME NOT NULL,
	FOREIGN KEY (`ano`) REFERENCES `Article`(`no`)
);

CREATE TABLE `Terms`(
	`terms`		TEXT NOT NULL,
	`privacy`	TEXT NOT NULL
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