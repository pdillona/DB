INSERT INTO ERModel.department SELECT*FROM userdb.department;

INSERT INTO ERModel.member SELECT*FROM userdb.member;

INSERT INTO ERModel.sales  SELECT*FROM userdb.sales;


INSERT INTO erd2.customer SELECT*FROM bookstore.customer ;



INSERT INTO `Publisher` VALUES('pearson','051-153-1234');
INSERT INTO `publisher` VALUES('굿스포츠','051-153-1235');
INSERT INTO `publisher` VALUES('나무수','051-153-1236');
INSERT INTO `publisher` VALUES('대한미디어','051-153-1237');
INSERT INTO `publisher` VALUES('이상미디어','051-153-1238');
INSERT INTO `publisher` VALUES('삼성당','051-153-1239');








INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a101', 2018, 1,  98100);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a102', 2018, 1, 136000);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a103', 2018, 1,  80100);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a104', 2018, 1,  78000);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a105', 2018, 1,  93000);

INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a101', 2018, 2,  23500);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a102', 2018, 2, 126000);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a103', 2018, 2,  18500);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a105', 2018, 2,  19000);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a106', 2018, 2,  53000);

INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a101', 2019, 1,  24000);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a102', 2019, 1, 109000);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a103', 2019, 1, 101000);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a104', 2019, 1,  53500);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a107', 2019, 1,  24000);

INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a102', 2019, 2, 160000);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a103', 2019, 2, 101000);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a104', 2019, 2,  43000);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a105', 2019, 2,  24000);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a106', 2019, 2, 109000);

INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a102', 2020, 1, 201000);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a104', 2020, 1,  63000);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a105', 2020, 1,  74000);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a106', 2020, 1, 122000);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a107', 2020, 1, 111000);






INSERT INTO erd3.lecture  SELECT*FROM college.lecture;



INSERT INTO erd3.register  SELECT*FROM college.register;



INSERT INTO erd3.student  SELECT*FROM userdb.student;




INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a102', 2020, 2, 120000);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a103', 2020, 2,  93000);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a104', 2020, 2,  84000);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a105', 2020, 2, 180000);
INSERT INTO `sales` (`uid`, `year`, `month`, `price`) VALUES ('a108', 2020, 2,  76000);