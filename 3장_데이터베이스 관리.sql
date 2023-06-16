# 날짜: 2023/06/16
# 이름: 정영재
# 내용: 3장 데이터베이스 관리


#실습 3-1
CREATE DATABASE	`TestDB`;
#tester라는 아이디로 %는 외부 계정을 의미   비밀번호를 1234로
CREATE USER 'tester'@'%' IDENTIFIED BY '1234';
#`TestDB`의 주인이 tester가 되는거임
GRANT ALL PRIVILEGES ON `TestDB` .* TO 'tester'@'%';
#변경내용 반영 명령
FLUSH PRIVILEGES; 



#실습 3-2

ALTER USER 'tester'@'%' IDENTIFIED BY '12345';
DROP USER 'tester'@'%';
FLUSH PRIVILEGES;


