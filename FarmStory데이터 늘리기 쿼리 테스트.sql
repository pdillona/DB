#상품 채우기
INSERT INTO `Product` (`type`,`pName`,`price`,`delivery`, `stock`, `thumb1`, `thumb2`, `thumb3`, `seller`, `rdate`)
SELECT `type`,`pName`,`price`,`delivery`, `stock`, `thumb1`, `thumb2`, `thumb3`, `seller`, `rdate` FROM `Product`;


SELECT COUNT(*) FROM  `Product` WHERE `stock` > 0;