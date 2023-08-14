-- customer

INSERT INTO `Customer` 
SET cust_jumin ='760121-1234567',cust_name ='정우성',
    cust_addr ='서울',cust_birth ='1976-01-21',
	 cust_phnum = '010-1101-7601',
	 cust_job ='배우';

INSERT INTO `Customer` 
SET cust_jumin ='750611-1234567',cust_name ='이정재',
    cust_addr ='서울',cust_birth ='1975-06-11',
	 cust_phnum = '010-1102-7506',
	 cust_job ='배우';

INSERT INTO `Customer` 
SET cust_jumin ='890530-1234567',cust_name ='전지현',
    cust_addr ='대전',cust_birth ='1989-05-30',
	 cust_email ='jjh@naver.com',cust_phnum = '010-1103-8905',
	 cust_job ='자영업';
	 
INSERT INTO `Customer` 
SET cust_jumin ='790413-1234567',cust_name ='이나영',
    cust_addr ='대전',cust_birth ='1979-04-13',
	 cust_email ='lee@naver.com',cust_phnum = '010-2101-7904',
	 cust_job ='회사원';
	 
INSERT INTO `Customer` 
SET cust_jumin ='660912-1234567',cust_name ='원빈',
    cust_addr ='대전',cust_birth ='1966-09-12',
	 cust_email ='one@daum.net',cust_phnum = '010-2104-6609',
	 cust_job ='배우';
	 
INSERT INTO `Customer` 
SET cust_jumin ='790728-1234567',cust_name ='장동건',
    cust_addr ='대구',cust_birth ='1979-07-28',
	 cust_email ='jang@naver.com',cust_phnum = '010-3101-7907',
	 cust_job ='배우';
	 	 
INSERT INTO `Customer` 
SET cust_jumin ='840615-1234567',cust_name ='고소영',
    cust_addr ='대구',cust_birth ='1984-06-15',
	 cust_email ='goso@daum.net',cust_phnum = '010-4101-8406',
	 cust_job ='회사원';
	 	 
INSERT INTO `Customer` 
SET cust_jumin ='651021-1234567',cust_name ='김연아',
    cust_addr ='대구',cust_birth ='1965-10-21',
	 cust_email ='yuna@daum.net',cust_phnum = '010-5101-6510',
	 cust_job ='운동선수';
	 	 
INSERT INTO `Customer` 
SET cust_jumin ='721128-1234567',cust_name ='유재석',
    cust_addr ='부산',cust_birth ='1972-11-28',
	 cust_phnum = '010-6101-7211',
	 cust_job ='개그맨';
	 	 
INSERT INTO `Customer` 
SET cust_jumin ='920907-1234567',cust_name ='강호동',
    cust_addr ='부산',cust_birth ='1992-09-07',
	 cust_phnum = '010-7103-9209',
	 cust_job ='개그맨';	 
	 	 	 
INSERT INTO `Customer` 
SET cust_jumin ='891209-1234567',cust_name ='조인성',
    cust_addr ='광주',cust_birth ='1989-12-09',
	 cust_email ='join@gmail.com',cust_phnum = '010-7104-8912',
	 cust_job ='배우';	 
	 	 
INSERT INTO `Customer` 
SET cust_jumin ='770314-1234567',cust_name ='강동원',
    cust_addr ='광주',cust_birth ='1977-03-14',
	 cust_email ='dong@naver.com',cust_phnum = '010-8101-7703',
	 cust_job ='배우';	 


-- Account


INSERT INTO `Account` 
SET acc_id='1011-1001-1001',cust_jumin ='760121-1234567',
    acc_type ='자유입출금',acc_balance = 4160000,
	 acc_card ='Y',acc_register_date ='2020-01-21 13:00:02' ;

INSERT INTO `Account` 
SET acc_id='1011-1001-1002',cust_jumin ='890530-1234567',
    acc_type ='자유입출금',acc_balance=376000,
	 acc_card ='Y',acc_register_date ='2020-06-11 13:00:02' ;
	 
INSERT INTO `Account` 
SET acc_id='1011-1001-1003',cust_jumin ='790413-1234567',
    acc_type ='자유입출금',acc_balance=1200000,
	 acc_card ='Y',acc_register_date ='2020-05-30 13:00:02' ;
	 
INSERT INTO `Account` 
SET acc_id='1011-2001-1004',cust_jumin ='660912-1234567',
    acc_type ='정기적금',acc_balance=1000000,
	 acc_card ='N',acc_register_date ='2020-04-13 13:00:02' ;
	 
INSERT INTO `Account` 
SET acc_id='1011-1002-1005',cust_jumin ='840615-1234567',
    acc_type ='자유입출금',acc_balance=820000,
	 acc_card ='Y',acc_register_date ='2020-09-12 13:00:02' ;
	 
INSERT INTO `Account` 
SET acc_id='1011-1002-1006',cust_jumin ='651021-1234567',
    acc_type ='자유입출금',acc_balance=3520000,
	 acc_card ='Y',acc_register_date ='2020-07-28 13:00:02' ;
	 
INSERT INTO `Account` 
SET acc_id='1011-1001-1007',cust_jumin ='721128-1234567',
    acc_type ='자유입출금',acc_balance=7620500,
	 acc_card ='Y',acc_register_date ='2020-06-15 13:00:02' ;
	 
INSERT INTO `Account` 
SET acc_id='1011-2001-1008',cust_jumin ='920907-1234567',
    acc_type ='정기적금',acc_balance=3400000,
	 acc_card ='N',acc_register_date ='2020-10-21 13:00:02' ;
	 
INSERT INTO `Account` 
SET acc_id='1011-1001-1009',cust_jumin ='891209-1234567',
    acc_type ='자유입출금',acc_balance=1763000,
	 acc_card ='Y',acc_register_date ='2020-11-28 13:00:02' ;
	 
INSERT INTO `Account` 
SET acc_id='1011-2001-1010',cust_jumin ='770314-1234567',
    acc_type ='정기적금',acc_balance=1080000,
	 acc_card ='N',acc_register_date ='2020-09-07 13:00:02' ;
	 	
-- Card


INSERT INTO `Card` 
SET card_no='2111-1001-1001',cust_jumin ='760121-1234567',
    acc_id ='1011-1001-1002',card_register_date='2020-01-21',
	 card_limit_money =1000000 ,card_approve_date='2020-02-10',
	 card_type='check';

INSERT INTO `Card` 
SET card_no='2041-1001-1002',cust_jumin ='890530-1234567',
    acc_id ='1011-1001-1002',card_register_date='2020-06-11',
	 card_limit_money =3000000 ,card_approve_date='2020-06-15',
	 card_type='check';
	 
INSERT INTO `Card` 
SET card_no='2011-1001-1003',cust_jumin ='790413-1234567',
    acc_id ='1011-1001-1003',card_register_date='2020-05-30',
	 card_limit_money = 5000000,card_approve_date='2020-06-25',
	 card_type='check';
	 
INSERT INTO `Card` 
SET card_no='2711-1001-1004',cust_jumin ='660912-1234567',
    card_register_date='2020-04-13',
	 card_limit_money = 1000000,card_approve_date='2020-05-10',
	 card_type='credit';
	 
INSERT INTO `Card` 
SET card_no='2611-1001-1005',cust_jumin ='840615-1234567',
    acc_id ='1011-1002-1005',card_register_date='2020-09-12',
	 card_limit_money =1500000 ,card_approve_date='2020-10-10',
	 card_type='check';
	 
INSERT INTO `Card` 
SET card_no='2781-1001-1006',cust_jumin ='651021-1234567',
    acc_id ='1011-1002-1006',card_register_date='2020-07-28',
	 card_limit_money = 10000000,card_approve_date='2020-08-15',
	 card_type='check';
	 
INSERT INTO `Card` 
SET card_no='2345-1001-1007',cust_jumin ='721128-1234567',
    acc_id ='1011-1001-1007',card_register_date='2020-06-15',
	 card_limit_money =2000000 ,card_approve_date='2020-07-25',
	 card_type='check';
	 
INSERT INTO `Card` 
SET card_no='2221-1001-1008',cust_jumin ='920907-1234567',
    card_register_date='2020-10-21',
	 card_limit_money =5000000 ,card_approve_date='2020-11-15',
	 card_type='credit';
	 
INSERT INTO `Card` 
SET card_no='2144-1001-1009',cust_jumin ='891209-1234567',
    acc_id ='1011-1001-1009',card_register_date='2020-11-28',
	 card_limit_money =1000000 ,card_approve_date='2020-12-10',
	 card_type='check';
	 
INSERT INTO `Card` 
SET card_no='2789-1001-1010',cust_jumin ='770314-1234567',
	 card_register_date='2020-09-07',
	 card_limit_money =1000000 ,card_approve_date='2020-10-10',
	 card_type='credit';
	 
-- Transaction

	 
INSERT INTO `Transaction` 
SET trans_acc_id ='1011-1001-1001',
	 trans_type='입금',
	 trans_message ='2월 정기급여',trans_money=3500000,
	 trans_date='2020-02-10 12:36:12';
	 	 
INSERT INTO `Transaction` 
SET trans_acc_id ='1011-1001-1003',
	 trans_type='출금',
	 trans_message ='ATM출금',trans_money=300000,
	 trans_date='2020-02-10 12:37:21';
	 	 
INSERT INTO `Transaction` 
SET trans_acc_id ='1011-1001-1002',
	 trans_type='입금',
	 trans_message ='2월 급여',trans_money=2800000,
	 trans_date='2020-02-10 12:38:21';
	 	 
INSERT INTO `Transaction` 
SET trans_acc_id ='1011-1001-1007',
	 trans_type='출금',
	 trans_message ='2월 공과금',trans_money=116200,
	 trans_date='2020-02-10 12:39:21';
	 
	 	 
INSERT INTO `Transaction` 
SET trans_acc_id ='1011-1002-1005',
	 trans_type='출금',
	 trans_message ='ATM출금',trans_money=50000,
	 trans_date='2020-02-10 12:40:21';
	 	 
INSERT INTO `Transaction` 
SET trans_acc_id ='1011-1001-1007',
	 trans_type='입금',
	 trans_message ='홍길동 이체',trans_money=400000,
	 trans_date='2020-02-10 12:41:21';	 
	 
INSERT INTO `Transaction` 
SET trans_acc_id ='1011-1001-1007',
	 trans_type='출금',
	 trans_message ='2월 관리비',trans_money=145000,
	 trans_date='2020-02-10 12:42:21';
	 	 
INSERT INTO `Transaction` 
SET trans_acc_id ='1011-1001-1002',
	 trans_type='입금',
	 trans_message ='홍길동 입금',trans_money=200000,
	 trans_date='2020-02-10 12:43:21';	 
	 
INSERT INTO `Transaction` 
SET trans_acc_id ='1011-1001-1009',
	 trans_type='입금',
	 trans_message ='연말정산 환급',trans_money=112000,
	 trans_date='2020-02-10 12:44:21';	 
INSERT INTO `Transaction` 
SET trans_acc_id ='1011-1002-1006',
	 trans_type='출금',
	 trans_message ='ATM 출금',trans_money=30000,
	 trans_date='2020-02-10 12:45:21';
	 


-- 고객 테이블조회

SELECT * FROM customer;


-- 카드 테이블 조회

SELECT * FROM card;


-- 예금계좌 테이블 조회

SELECT * FROM account;

-- 예금 계좌거래 내역 테이블 조회

SELECT * FROM transaction;

-- 카드 종류가 신용카드인 고객에 대한 모든 정보(고객명, 고객주소, 고객 생년월일, 
-- 고객 이메일, 고객 전화번호, 고객직업)을 조회 하시오.

SELECT `cust_name`,`cust_addr`,`cust_birth`,`cust_email`,`cust_phnum`,`cust_job`
FROM card AS a
JOIN customer AS b
ON a.cust_jumin = b.cust_jumin
WHERE `card_type` = 'credit';



--예금 잔고가 4,000,000원 이상인 고객에 대한 고객명, 주민번호, 전화번호, 주소를 조회하시오. 

SELECT `cust_name`, a.cust_jumin,`cust_phnum`,`cust_addr`
FROM Account AS a
JOIN Customer AS b
ON a.cust_jumin = b.cust_jumin
WHERE acc_balance >= 4000000;
