

#부서
INSERT INTO `Departments` VALUES('101','소아과','김유신','051-123-0101');
INSERT INTO `Departments` VALUES('102','내과','김춘추','051-123-0102');
INSERT INTO `Departments` VALUES('103','외과','장보고','051-123-0103');
INSERT INTO `Departments` VALUES('104','피부과','선덕여왕','051-123-0104');
INSERT INTO `Departments` VALUES('105','이비인후과','강감찬','051-123-0105');
INSERT INTO `Departments` VALUES('106','산부인과','신사임당','051-123-0106');
INSERT INTO `Departments` VALUES('107','흉부외과','류성룡','051-123-0107');
INSERT INTO `Departments` VALUES('108','정형외과','송상현','051-123-0108');
INSERT INTO `Departments` VALUES('109','신경외과','이순신','051-123-0109');
INSERT INTO `Departments` VALUES('110','비뇨기과','정약용','051-123-0110');
INSERT INTO `Departments` VALUES('111','안과','박지원','051-123-0111');
INSERT INTO `Departments` VALUES('112','치과','전봉준','051-123-0112');



#의사
INSERT INTO `Doctors` VALUES('D101101','김유신','1976-01-21','M','101','과장','010-1101-1976','kimys@bw.com');
INSERT INTO `Doctors` VALUES('D101102','계백','1975-06-11','M','101','전문의','010-1102-1975','gaeback@bw.com');
INSERT INTO `Doctors` VALUES('D101103','김관창','1989-05-30','M','101','전문의','010-1103-1989','kwanch@bw.com');
INSERT INTO `Doctors` VALUES('D102101','김춘추','1979-04-13','M','102','과장','010-2101-1979','kimcc@bw.com');
INSERT INTO `Doctors` VALUES('D102104','이사부','1966-09-12','M','102','전문의','010-2104-1966','leesabu@bw.com');
INSERT INTO `Doctors` VALUES('D103101','장보고','1979-07-28','M','103','과장','010-3101-1979','jangbg@bw.com');
INSERT INTO `Doctors` VALUES('D104101','선덕여왕','1984-06-15','F','104','과장','010-4101-1984','gueen@bw.com');
INSERT INTO `Doctors` VALUES('D105101','강감찬','1965-10-21','M','105','과장','010-5101-1965','kang@bw.com');
INSERT INTO `Doctors` VALUES('D106101','신사임당','1972-11-28','F','106','과장','010-6101-1972','sinsa@bw.com');
INSERT INTO `Doctors` VALUES('D107103','이이','1992-09-07','M','107','전문의','010-7103-1992','leelee@bw.com');
INSERT INTO `Doctors` VALUES('D107104','이황','1989-12-09','M','107','전문의','010-7104-1989','hwang@bw.com');
INSERT INTO `Doctors` VALUES('D108101','송상현','1977-03-14','M','108','과장','010-8101-1977','ssh@bw.com');






#환자
INSERT INTO `Patients` SET `pat_id` = 'P102101',`doc_id` ='D102101',`nur_id` ='N102101',`pat_name`='정우성',`pat_jumin`='760121-1234567',`pat_gen`='M',`pat_addr`='서울',`pat_phone`='010-1101-7601',`pat_job`='배우';
INSERT INTO `Patients` SET `pat_id` = 'P103101',`doc_id` ='D103101',`nur_id` ='N103101',`pat_name`='이정재',`pat_jumin`='750611-1234567',`pat_gen`='M',`pat_addr`='서울',`pat_phone`='010-1102-7506',`pat_job`='배우';

INSERT INTO `Patients` VALUES('P102102','D102104','N102103','전지현','890530-1234567','F','대전','010-1103-8905','jjh@naver.com','자영업');
INSERT INTO `Patients` VALUES('P104101','D104101','N104101','이나영','790413-1234567','F','대전','010-2101-7904','lee@naver.com','회사원');
INSERT INTO `Patients` VALUES('P105101','D105101','N105101','원빈','660912-1234567','M','대전','010-2104-6609','one@daum.net','배우');
INSERT INTO `Patients` VALUES('P103102','D103101','N103101','장동건','790728-1234567','M','대구','010-3101-7907','jang@naver.com','배우');
INSERT INTO `Patients` VALUES('P104102','D104101','N104101','고소영','840615-1234567','F','대구','010-4101-8406','goso@daum.net','회사원');
INSERT INTO `Patients` VALUES('P108101','D108101','N108101','김연아','651021-1234567','F','대구','010-5101-6510','yuna@daum.net','운동선수');

INSERT INTO `Patients` SET `pat_id` = 'P102103',`doc_id` = 'D102104',`nur_id` = 'N102102',`pat_name`='유재석',`pat_jumin`='721128-1234567',`pat_gen`='M',`pat_addr`='부산',`pat_phone`='010-6101-7211',`pat_job`='개그맨';
INSERT INTO `Patients` SET `pat_id` = 'P107101',`doc_id` = 'D107104',`nur_id` = 'N107101',`pat_name`='강호동',`pat_jumin`='920907-1234567',`pat_gen`='M',`pat_addr`='부산',`pat_phone`='010-7103-9209',`pat_job`='개그맨';

INSERT INTO `Patients` VALUES('P105102','D105101','N105101','조인성','891209-1234567','M','광주','010-7104-8912','join@gmail.com','배우');
INSERT INTO `Patients` VALUES('P104103','D104101','N104101','강동원','770314-1234567','M','광주','010-8101-7703','dong@naver.com','배우');






#간호사
INSERT INTO `Nurses` VALUES('N101101','송승헌','1976-02-21','M','101','수간호사','010-1101-7602','ssh@bw.com');
INSERT INTO `Nurses` VALUES('N102101','이영애','1975-07-11','F','102','수간호사','010-1102-7507','yung@bw.com');
INSERT INTO `Nurses` VALUES('N102102','엄정화','1989-06-30','F','102','주임','010-1103-8906','um@bw.com');
INSERT INTO `Nurses` VALUES('N102103','박명수','1979-05-13','M','102','주임','010-2101-7905','park@bw.com');
INSERT INTO `Nurses` VALUES('N103101','정준하','1966-10-12','M','103','주임','010-2104-6610','jung@bw.com');
INSERT INTO `Nurses` VALUES('N104101','김태희','1979-08-28','F','104','주임','010-3101-7908','taeh@bw.com');
INSERT INTO `Nurses` VALUES('N105101','송혜교','1984-07-15','F','105','주임','010-4101-8407','song@bw.com');
INSERT INTO `Nurses` VALUES('N106101','공유','1965-11-21','M','106','간호사','010-5101-6511','gong@bw.com');
INSERT INTO `Nurses` VALUES('N107101','이병헌','1972-12-28','M','107','간호사','010-6101-7212','byung@bw.com');
INSERT INTO `Nurses` VALUES('N108101','송중기','1992-10-07','M','108','간호사','010-7103-9210','jungi@bw.com');






#진료
INSERT INTO `Treatments` VALUES(1021001,'D102101','P102101','감기, 몸살','2022-01-10 10:50:12');
INSERT INTO `Treatments` VALUES(1031002,'D103101','P103101','교통사고 외상','2022-01-10 10:50:12');
INSERT INTO `Treatments` VALUES(1021003,'D102104','P102102','위염,장염','2022-01-10 10:50:12');
INSERT INTO `Treatments` VALUES(1041004,'D104101','P104101','피부 트러블','2022-01-10 10:50:12');
INSERT INTO `Treatments` VALUES(1051005,'D105101','P105101','코막힘 및 비염','2022-01-10 10:50:12');
INSERT INTO `Treatments` VALUES(1031006,'D103101','P103102','목 디스크','2022-01-10 10:50:12');
INSERT INTO `Treatments` VALUES(1041007,'D104101','P104102','여드름','2022-01-10 10:50:12');
INSERT INTO `Treatments` VALUES(1081008,'D108101','P108101','오른쪽 발목 뼈 골절','2022-01-10 10:50:12');
INSERT INTO `Treatments` VALUES(1021009,'D102104','P102103','소화불량','2022-01-10 10:50:12');
INSERT INTO `Treatments` VALUES(1071010,'D107104','P107101','가슴 통증','2022-01-10 10:50:12');
INSERT INTO `Treatments` VALUES(1051011,'D105101','P105102','귀 이명','2022-01-10 10:50:12');
INSERT INTO `Treatments` VALUES(1041012,'D104101','P104103','팔목 화상','2022-01-10 10:50:12');







#차트
INSERT INTO `Charts` VALUES('C1021001',1021001,'D102101','P102101','감기 주사 및 약 처방');
INSERT INTO `Charts` VALUES('C1031002',1031002,'D103101','P103101','입원 치료');
INSERT INTO `Charts` VALUES('C1021003',1021003,'D102104','P102102','위내시경');
INSERT INTO `Charts` VALUES('C1041004',1041004,'D104101','P104101','피부 감염 방지 주사');
INSERT INTO `Charts` VALUES('C1051005',1051005,'D105101','P105101','비염 치료');
INSERT INTO `Charts` VALUES('C1031006',1031006,'D103101','P103102','목 견인치료');
INSERT INTO `Charts` VALUES('C1041007',1041007,'D104101','P104102','여드름 치료약 처방');
INSERT INTO `Charts` VALUES('C1081008',1081008,'D108101','P108101','발목 깁스');
INSERT INTO `Charts` VALUES('C1021009',1021009,'D102104','P102103','주사 처방');
INSERT INTO `Charts` VALUES('C1071010',1071010,'D107104','P107101','MRI 검사');
INSERT INTO `Charts` VALUES('C1051011',1051011,'D105101','P105102','귀 청소 및 약 처방');
INSERT INTO `Charts` VALUES('C1041012',1041012,'D104101','P104103','화상 크림약 처방');







#1. 모든 의사의 의사 ID,이름,생년월일, 전공의과 번호, 정공의과 이름을 조회

SELECT doc_id, doc_birth, a.dep_no, dep_name
FROM doctors AS a JOIN departments AS b
ON a.dep_no = b.dep_no ;



#2. 모든 간호사의 간호사ID, 이름, 생년월일,전공의과 번호,전공의과이름을 조회
SELECT nur_id, nur_name, nur_birth, b.dep_no, b.dep_name
FROM nurses AS a JOIN departments AS b
ON a.dep_no = b.dep_no;


SELECT nur_id, nur_name, nur_birth, dep_no, dep_name
FROM nurses  JOIN departments USING(`dep_no`);


#3. 모든 환자의 환자ID,이름,주민번호, 휴대폰, 담당의사 이름,담당간호사 이름을 조회
SELECT pat_id, pat_name, pat_jumin, pat_phone, b.doc_id, c.nur_name
FROM patients AS a JOIN doctors AS b 
ON a.doc_id = b.doc_id
JOIN nurses AS c
ON a.nur_id = c.nur_id;


#4. 모든 진료내역에서 환자 이름, 담당의사 이름, 진료내용, 처방내용, 진료날자를 조회
SELECT pat_name, doc_name, treat_contents, chart_contents, treat_datetime
FROM patients AS a JOIN doctors AS b
ON a.doc_id = b.doc_id
JOIN treatments AS c
ON a.pat_id = c.pat_id
JOIN charts AS d
ON b.doc_id = d.doc_id;


#5. 모든 진료내역에서 외과에서 진료한 내역 가운데 진료번호, 환자이름, 담당의사명, 진료내용, 처방내용 진료날짜를 조회하시오
SELECT c.treat_no, pat_name, b.doc_name, c.treat_contents,chart_contents, treat_datetime
FROM patients AS a JOIN doctors AS b
ON a.doc_id = b.doc_id
JOIN treatments AS c
ON a.pat_id = c.pat_id
JOIN charts AS d
ON b.doc_id = d.doc_id
WHERE b.dep_no = 103;
# 6번과 마찬가지 진료내역에서 라고 했는데 환자로 시작해서 연결이 마구잡이임.
# 지문을 잘읽고 문제를 풀어야함.


SELECT 
	a.`treat_no`,
	`pat_name`,
	`doc_name`,
	`treat_contents`,
	`chart_contents`,
	`treat_datetime`
FROM `Treatments`  AS a
JOIN `Doctors`     AS b ON a.doc_id = b.doc_id
JOIN `Departments` AS c ON b.dep_no = c.dep_no
JOIN `Charts`      AS d ON a.treat_no = d.treat_no
JOIN `Patients`    AS e ON a.pat_id = e.pat_id
WHERE `dep_name`='외과';


#6. 모든 진료내역에서 화상에서 진료한 내역 가운데 진료번호, 환자이름, 담당의사명, 진료내용, 처방내용 진료날짜를 조회하시오
SELECT c.treat_no, pat_name, b.doc_name, c.treat_contents,chart_contents, treat_datetime
FROM patients AS a JOIN doctors AS b
ON a.doc_id = b.doc_id
JOIN treatments AS c
ON a.pat_id = c.pat_id
JOIN charts AS d
ON b.doc_id = d.doc_id
WHERE c.treat_contents like '%화상';

# treatments 진료 내역에서 조회 하라 하였으니 from treatments로 시작하는게 맞는듯 
# 지문을 잘 읽어야함.

SELECT 
	a.`treat_no`,
	`pat_name`,
	`doc_name`,
	`treat_contents`,
	`chart_contents`,
	`treat_datetime`
FROM `Treatments`  AS a
JOIN `Doctors`     AS b ON a.doc_id = b.doc_id
JOIN `Departments` AS c ON b.dep_no = c.dep_no
JOIN `Charts`      AS d ON a.treat_no = d.treat_no
JOIN `Patients`    AS e ON a.pat_id = e.pat_id
WHERE `treat_contents` LIKE '%화상%';



#7. 현재 날짜를 기준으로 30세이상 ~ 40세 미만 환자를 조회



SELECT * from
	(SELECT 
		*,
		YEAR(NOW()) - `year` AS `age`
	 from
		(SELECT
			*,
			CONCAT('19', SUBSTRING(`pat_jumin`, 1, 2)) AS `year`
		FROM `Patients`) AS a
	) AS b
WHERE `age` >= 30 AND `age` < 40;

#concast로 앞에 19를 붙여줌. subString의 1,2 는 1번부터 2개를 자르라는 의미 
#AS a는 괄호에 대한 별칭


#정채윤
select * FROM patients
WHERE  (YEAR(NOW()) - CONCAT(19,SUBSTR(pat_jumin,1,2))+1) BETWEEN 30 AND 40;

#
SELECT *  FROM patients AS a
WHERE ((DATE_FORMAT(NOW(),'%y')+100)-SUBSTR(a.pat_jumin,1,2) ) BETWEEN 30 AND 40;




#8. 모든 전공 부서에서 아직 의사ID가 부여되지 않은 의사의 이름과 부서명을 조회
SELECT dep_manager, dep_name
FROM departments AS a
LEFT JOIN doctors AS b ON a.dep_no = b.dep_no
WHERE doc_id IS NULL;







#9 김태희 간호사가 맡고 있는 모든 환자의 이름을 구분자 ^로 해서 강동원^고소영^이나영^과 같이 조회
SELECT GROUP_CONCAT(pat_name SEPARATOR '^') AS 환자들
FROM patients AS a
JOIN nurses AS b ON a.nur_id = b.nur_id
WHERE nur_name = '김태희';




#10 가장 많은 환자 수를 담당 하는 간호사 ID, 간호사 이름, 담당 환자수를 조회
SELECT a.nur_id, nur_name, COUNT(*) AS 환자수
FROM patients AS a
JOIN nurses AS b ON a.nur_id = b.nur_id
GROUP BY a.nur_id
ORDER BY 환자수 DESC 
LIMIT 1;






