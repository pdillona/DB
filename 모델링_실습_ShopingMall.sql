

#고객
INSERT INTO `Users` VALUES('user1','김유신','1976-01-21','M','010-1101-1976','kimys@naver.com',0,1,'서울','2022-01-10
10:50:12');


INSERT INTO `Users` SET userId = 'user2', userName = '계백', userBirth = '1975-06-11',userGender = 'M',userHp = '010-1102-1975',userPoint = 1000, userLevel = 1,userAddr = '서울',userRegDate = '2022-01-10
10:50:12';
INSERT INTO `Users` SET userId ='user3',userName ='김춘추',userBirth ='1989-05-30',userGender ='M',userHp ='010-1103-1989',userPoint = 1200,userLevel = 2,userAddr ='서울',userRegDate ='2022-01-10
10:50:12';


INSERT INTO `Users` VALUES('user4','이사부','1979-04-13','M','010-2101-1979','leesabu@gmail.com',2600,1,'서울','2022-01-10
10:50:12');
INSERT INTO `Users` VALUES('user5','장보고','1966-09-12','M','010-2104-1966','jangbg@naver.com',9400,4,'대전','2022-01-10
10:50:12');
INSERT INTO `Users` VALUES('user6','선덕여왕','1979-07-28','M','010-3101-1979','gueen@naver.com',1600,2,'대전','2022-01-10
10:50:12');
INSERT INTO `Users` VALUES('user7','강감찬','1984-06-15','F','010-4101-1984','kang@daum.net ',800,0,'대구','2022-01-10
10:50:12');
INSERT INTO `Users` VALUES('user8','신사임당','1965-10-21','M','010-5101-1965','sinsa@gmail.com',1500,1,'대구','2022-01-10
10:50:12');
INSERT INTO `Users` VALUES('user9','이이','1972-11-28','F','010-6101-1972','leelee@nate.com',3400,3,'부산','2022-01-10
10:50:12');


INSERT INTO `Users` SET userId ='user10',userName ='허난설헌',userBirth ='1992-09-07',userGender ='F',userHp ='010-7103-1992',userPoint =4100,userLevel =3,userAddr ='광주',userRegDate ='2022-01-10
10:50:12';


CREATE TABLE IF NOT EXISTS `ShoppingMall`.`Points` (
  `pointNo` INT NOT NULL AUTO_INCREMENT,
  `userId` VARCHAR(20) NOT NULL,
  `point` INT NOT NULL,
  `pointDesc` VARCHAR(45) NOT NULL,
  `pointDate` DATETIME NOT NULL,
  PRIMARY KEY (`pointNo`, `userId`, `point`, `pointDesc`, `pointDate`),
  INDEX `fk_User_Users1_idx` (`userId` ASC) VISIBLE,
  CONSTRAINT `fk_User_Users1`
    FOREIGN KEY (`userId`)
    REFERENCES `ShoppingMall`.`Users` (`userId`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


DROP TABLE `Points`;

#포인트
INSERT INTO `Points` VALUES(1,'user1',1000,'회원가입 1000 적립','2022-01-10 10:50:12');
INSERT INTO `Points` VALUES(2,'user1',6000,'상품구매 5% 적립','2022-01-10 10:50:12');
INSERT INTO `Points` VALUES(3,'user3',2835,'상품구매 5% 적립','2022-01-10 10:50:12');
INSERT INTO `Points` VALUES(4,'user7',3610,'상품구매 5% 적립','2022-01-10 10:50:12');
INSERT INTO `Points` VALUES(5,'user5',3000,'이벤트 응모 3000 적립','2022-01-10 10:50:12');
INSERT INTO `Points` VALUES(6,'user2',1000,'회원가입 1000 적립','2022-01-10 10:50:12');
INSERT INTO `Points` VALUES(7,'user2',2000,'이벤트 응모 2000 적립','2022-01-10 10:50:12');
INSERT INTO `Points` VALUES(8,'user2',2615,'상품구매 5% 적립','2022-01-10 10:50:12');
INSERT INTO `Points` VALUES(9,'user3',1500,'이벤트 응모 1500 적립','2022-01-10 10:50:12');
INSERT INTO `Points` VALUES(10,'user6',15840,'상품구매 2% 적립','2022-01-10 10:50:12');

#미련하게 AI인거 보지도않고 밀어넣어서 userId 직접 넣어버림
#다음번에는 AI인거 확인하고 SET으로 밀어넣으세여 
#다시 넣으려고 아래에 뻘짓 좀 하다가 테이블 지우기 싫어서 고대로진행

#DELETE FROM `Points` WHERE userId ='user10';

#UPDATE `Points`
#SET `pointNo` = NULL
#WHERE `pointNo` is not null;




#판매자
INSERT INTO `Sellers` VALUES(10001,'(주)다팔아','02-201-1976','정우성','서울');
INSERT INTO `Sellers` VALUES(10002,'판매의민족','02-102-1975','이정재','서울');
INSERT INTO `Sellers` VALUES(10003,'멋남','031-103-1989','원빈','경기');
INSERT INTO `Sellers` VALUES(10004,'스타일살아','032-201-1979','이나영','경기');
INSERT INTO `Sellers` VALUES(10005,'(주)삼성전자','02-214-1966','장동건','서울');
INSERT INTO `Sellers` VALUES(10006,'복실이옷짱','051-301-1979','고소영','부산');
INSERT INTO `Sellers` VALUES(10007,'컴퓨존(주)','055-401-1984','유재석','대구');
INSERT INTO `Sellers` VALUES(10008,'(주)LG전자','02-511-1965','강호동','서울');
INSERT INTO `Sellers` VALUES(10009,'굿바디스포츠','070-6101-1972','조인성','부산');
INSERT INTO `Sellers` VALUES(10010,'누리푸드','051-710-1992','강동원','부산');






#상품카테고리
INSERT INTO `Categories` VALUES(10,'여성의류패션');
INSERT INTO `Categories` VALUES(11,'남성의류패션');
INSERT INTO `Categories` VALUES(12,'식품·생필품');
INSERT INTO `Categories` VALUES(13,'취미·반려견');
INSERT INTO `Categories` VALUES(14,'홈·문구');
INSERT INTO `Categories` VALUES(15,'자동차·공구');
INSERT INTO `Categories` VALUES(16,'스포츠·건강');
INSERT INTO `Categories` VALUES(17,'컴퓨터·가전·디지털');
INSERT INTO `Categories` VALUES(18,'여행');
INSERT INTO `Categories` VALUES(19,'도서');








#상품
INSERT INTO Products VALUES(100101, 11, 10003, '반팔티 L~2XL', 869, 25000, 132, 20);
INSERT INTO Products VALUES(100110, 10, 10004, '트레이닝 통바지', 1602, 38000, 398, 15);
INSERT INTO Products VALUES(110101, 10, 10003, '신상 여성운동화', 160, 76000, 40, 5);

INSERT INTO products (prodNo, cateNo, sellerNo, prodName, prodPrice, prodSold, prodDiscount)
VALUES(120101, 12, 10010, '암소 1등급 구이셋트 1.2kg', 150000, 87, 15);
INSERT INTO products (prodNo, cateNo, sellerNo, prodName, prodPrice, prodSold, prodDiscount)
VALUES(120103, 12, 10010, '바로구이 부채살 250g', 21000, 61, 10);

INSERT INTO Products VALUES(130101, 13, 10006, '[ANF] 식스프리 강아지 사료', 58, 56000, 142, 0);
INSERT INTO Products VALUES(130112, 13, 10006, '중대형 사계절 강아지옷', 120, 15000, 80, 0);
INSERT INTO products (prodNo, cateNo, sellerNo, prodName, prodPrice, prodSold, prodDiscount)
VALUES(141001, 14, 10001, '라떼 2인 소파/방수 패브릭', 320000,  42, 0);
INSERT INTO Products VALUES(170115, 17, 10007, '지포스 3080 그래픽카드', 28, 900000, 12, 12);
INSERT INTO Products VALUES(160103, 16, 10009, '치닝디핑 33BR 철봉', 32, 120000, 28, 0);







#주문
INSERT INTO orders VALUES('22010210001', 'user2', 52300, '서울시 마포구 121', 1, '2022-01-10 10:50:12');
INSERT INTO orders VALUES('22010210002', 'user3', 56700, '서울시 강남구 21-1', 1, '2022-01-10 10:50:12');
INSERT INTO orders VALUES('22010210010', 'user4', 72200, '서울시 강서구 큰대로 38', 2, '2022-01-10 10:50:12');
INSERT INTO orders VALUES('22010310001', 'user5', 127000, '경기도 광주시 초월로 21', 1, '2022-01-10 10:50:12');
INSERT INTO orders VALUES('22010310100', 'user1', 120000, '경기도 수원시 120번지', 0, '2022-01-10 10:50:12');

INSERT INTO orders VALUES('22010410101', 'user6', 792000, '부산시 남구 21-1', 2, '2022-01-10 10:50:12');
INSERT INTO orders VALUES('22010510021', 'user7', 92200, '부산시 부산진구 56 10층', 4, '2022-01-10 10:50:12');
INSERT INTO orders VALUES('22010510027', 'user8', 112000, '대구시 팔달로 19', 3, '2022-01-10 10:50:12');
INSERT INTO orders VALUES('22010510031', 'user10', 792000, '대전시 한밭로 24-1', 2, '2022-01-10 10:50:12');
INSERT INTO orders VALUES('22010710110', 'user9', 94500, '광주시 충열로 11', 1, '2022-01-10 10:50:12');







#주문상품상세
INSERT INTO orderitems(orderNo, prodNo, itemPrice, itemDiscount)
VALUES('22010210001', 100110, 38000, 15);
INSERT INTO orderitems(orderNo, prodNo, itemPrice, itemDiscount)
VALUES('22010210001', 100101, 25000, 20);
INSERT INTO orderitems(orderNo, prodNo, itemPrice, itemDiscount, itemCount)
VALUES('22010210002', 120103, 21000, 10, 3);
INSERT INTO orderitems(orderNo, prodNo, itemPrice, itemDiscount)
VALUES('22010310001', 130112, 15000, 0);
INSERT INTO orderitems(orderNo, prodNo, itemPrice, itemDiscount, itemCount)
VALUES('22010310001', 130101, 56000, 0, 2);


INSERT INTO orderitems(orderNo, prodNo, itemPrice, itemDiscount)
VALUES('22010210010', 110101, 76000, 5);
INSERT INTO orderitems(orderNo, prodNo, itemPrice, itemDiscount)
VALUES('22010310100', 160103, 120000, 0);
INSERT INTO orderitems(orderNo, prodNo, itemPrice, itemDiscount)
VALUES('22010410101', 170115, 900000, 12);
INSERT INTO orderitems(orderNo, prodNo, itemPrice, itemDiscount)
VALUES('22010510021', 110101, 76000, 5);
INSERT INTO orderitems(orderNo, prodNo, itemPrice, itemDiscount, itemCount)
VALUES('22010510027', 130101, 56000, 0, 2);

INSERT INTO orderitems(orderNo, prodNo, itemPrice, itemDiscount)
VALUES('22010510021', 100101, 25000, 20);
INSERT INTO orderitems(orderNo, prodNo, itemPrice, itemDiscount)
VALUES('22010510031', 170115, 900000, 12);
INSERT INTO orderitems(orderNo, prodNo, itemPrice, itemDiscount, itemCount)
VALUES('22010710110', 120103, 21000, 10, 5);





#장바구니
INSERT INTO carts(userID, prodNo, cartProdCount, cartProdDate) 
VALUES('user1', 100101, 1, '2022-01-10 10:50:12');
INSERT INTO carts(userID, prodNo, cartProdCount, cartProdDate) 
VALUES('user1', 100110, 2, '2022-01-10 10:50:12');
INSERT INTO carts(userID, prodNo, cartProdCount, cartProdDate) 
VALUES('user3', 120103, 1, '2022-01-10 10:50:12');
INSERT INTO carts(userID, prodNo, cartProdCount, cartProdDate) 
VALUES('user4', 130112, 1, '2022-01-10 10:50:12');
INSERT INTO carts(userID, prodNo, cartProdCount, cartProdDate) 
VALUES('user5', 130101, 1, '2022-01-10 10:50:12');

INSERT INTO carts(userID, prodNo, cartProdCount, cartProdDate) 
VALUES('user2', 110101, 3, '2022-01-10 10:50:12');
INSERT INTO carts(userID, prodNo, cartProdCount, cartProdDate) 
VALUES('user2', 160103, 1, '2022-01-10 10:50:12');
INSERT INTO carts(userID, prodNo, cartProdCount, cartProdDate) 
VALUES('user2', 170115, 1, '2022-01-10 10:50:12');
INSERT INTO carts(userID, prodNo, cartProdCount, cartProdDate) 
VALUES('user3', 110101, 1, '2022-01-10 10:50:12');
INSERT INTO carts(userID, prodNo, cartProdCount, cartProdDate) 
VALUES('user6', 130101, 1, '2022-01-10 10:50:12');










#1 모든 장바구니 내역에서 고객명, 상품명, 상품수량을 조회 하시오 
# 단 상품수량 2천이상만 조회 할 것
SELECT `userName`, `prodName`, cartProdCount
FROM `Carts` AS a 
JOIN `Products`AS b
ON	a.prodNo = b.prodNo
JOIN `Users` AS c
ON a.userId = c.userId
WHERE `cartProdCount`>= 2;







#2 모든 상품 내역에서 상품번호, 상품카테고리명, 상품명, 상품가격, 판매자이름
# 판매자 연락처를 조회하시오
SELECT `prodNo`, `cateNo`, `prodName`, 
`prodPrice`, `sellerManager`,`sellerPhone`
FROM `Products` AS a
JOIN `Sellers` AS b
ON a.sellerNo = b.sellerNo;

#카테고리 연결해서 더 받아와야 되는데 문제 또띠 안읽었음 ㅋㅋ






#3 모든 고객의 아이디, 이름, 휴대폰, 현재포인트, 적립포인트 총합을 조회
# 하시오 단 적립포인트 내역이 없으면 0으로 출력
SELECT a.userId, `userName`, `userHp`, `userPoint`, 
IF (SUM(b.point) > 0, SUM(b.point), 0)AS '적립포인트 총합' 		
FROM `Users` AS a
LEFT JOIN `Points` AS b
ON a.userId = b.userId
GROUP BY a.userId;









#4 모든 주문의 주문번호, 주문자 아이디, 고객명, 주문가격, 주문일자를 조회 하시오
# 단 주문금액에 10만원 이상 큰 금액순으로 조회 금액이 같으면 이름이 사전순으로 될것.
SELECT `orderNo`,b.userId,`userName`,`orderTotalPrice`,`orderDate`
FROM `Orders` AS a
JOIN `Users` AS b
ON a.userId = b.userId
WHERE a.orderTotalPrice >= 100000
ORDER BY a.orderTotalPrice DESC , b.userName ASC;






#5 모든 주문의 주문번호, 주문자 아이디, 고객명, 상품명, 주문일자를 조회 하시오.
# 주문번호는 중복없이 상품명은 구분자,로 나열할것
SELECT a.orderNo,a.userId,`userName`,
GROUP_CONCAT(prodName SEPARATOR ',')AS 제품목록,`orderDate`
FROM `Orders` AS a
JOIN `Users` AS b
ON a.userId = b.userId
JOIN `OrderItems` AS c
ON a.orderNo = c.orderNo
JOIN `Products` AS d
ON c.prodNo = d.prodNo
GROUP BY a.orderNo, userId;




#6 모든 삼품의 상품번호 상품명 상품가격 할인율 할인된 가격을 조회 하시오
SELECT prodNo,prodName, prodPrice, prodDiscount,
FLOOR(prodPrice*(1-prodDiscount/100)) AS 할인된가격
FROM products ;






#7 고소영이 판매하는 모든 상품의 상품 번호, 상품명 , 상품가격, 재고수량,
# 판매자의 이름을 조회하시오

SELECT   `prodNo`,`prodName`,`prodPrice`,`prodStock`,`sellerBizName`
FROM `Sellers` AS a
JOIN `Products` AS b
ON a.sellerNo = b.sellerNo
WHERE `sellerManager`='고소영';






#8 아직 상품을 판매하지 않은 판매자의 판매자번호, 판매자 상호, 판매자이름
# 판매자 연락처를 조회하시오.
SELECT a.sellerNo,`sellerBizName`, `sellerManager`, `sellerPhone`
FROM `Sellers` AS a
LEFT JOIN `Products` AS b
ON a.sellerNo = b.sellerNo
WHERE prodNo IS NULL;





#9 모든 주문 상세내역중 개별 상품 가격과 개수 그리고 할인율이 적용된 최종
# 총합을 구하고 주문별 총 합을 구해서 주문별 총합이  최종 총합이 10만원 이상
# 그리고 큰 금액순으로 `주문번호` `최종총합`을 조회하시오

# 방법 1
SELECT
	`orderNo` AS `주문번호`,
	SUM(`totalPrice`) AS `최종총합`
FROM
	(SELECT *,
		FLOOR(`itemPrice` * (1 - `itemDiscount` / 100) * `itemCount`) AS `totalPrice`
	FROM `OrderItems`
	) AS a
GROUP BY `orderNo`
HAVING `최종총합` >= 100000
ORDER BY `최종총합` DESC;


# 방법 2
SELECT 
	`orderNo`, 
	SUM((`itemPrice` * (1 - `itemDiscount` / 100)) * `itemCount`) AS `최종총합`
FROM `OrderItems`
GROUP BY `orderNo`
HAVING `최종총합` >= 100000
ORDER BY `최종총합` DESC;


#10장보고 고객이 주문했던 모든 상품명을 고객명, 상품명으로 조회
#상품명 중복x, 상품명 구분자,로 나열

SELECT 
	`userName`,
	GROUP_CONCAT(`prodName` SEPARATOR ',')
FROM `Orders` AS a
JOIN `Users` AS b ON a.userId=b.userId
JOIN `OrderItems` AS c ON a.orderNo=c.orderNo
JOIN `Products` AS d ON d.prodNo=c.prodNo
WHERE `userName` = '장보고';



