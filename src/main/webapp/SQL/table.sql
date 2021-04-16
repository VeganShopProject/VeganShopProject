--회원가입
DROP TABLE MEMBER purge;
CREATE TABLE MEMBER(
	SEQ  					NUMBER PRIMARY KEY,
	ID 					VARCHAR2(20),
	PW 					VARCHAR2(15),
	NAME 				VARCHAR2(20),
	JUMIN1 				NUMBER,
	JUMIN2 				NUMBER,
	EMAIL1 				VARCHAR2(25),
	EMAIL2				VARCHAR2(25),
	EMAIL_GET 		VARCHAR2(7),
	MOBILE 				VARCHAR2(13),
	PHONE 				VARCHAR2(13),
	ZIPCODE1			VARCHAR2(13),
	ZIPCODE2			VARCHAR2(13),
	ADDR1 				VARCHAR2(70),
	ADDR2 				VARCHAR2(70),
	MEMBER_DATE 	DATE DEFAULT SYSDATE
);
select * from MEMBER;
insert into member values(1,'admin','admin','관리자',0,0,'','','','','','','','','',sysdate);
insert into member values(2,'user1','user1','사용자1',0,0,'','','','','','','','','',sysdate);
delete from member where seq=4;

--주소 
DROP TABLE ZIPCODE;
CREATE TABLE ZIPCODE (
  ID 				NUMBER  PRIMARY KEY,
  ZIPCODE 	VARCHAR2(7),
  SIDO 			VARCHAR2(10),
  GUGUN 		VARCHAR2(30),
  DONG 			VARCHAR2(36),
  RI 				VARCHAR2(60),
  BUNJI 			VARCHAR2(50)
);
select * from ZIPCODE; where dong like '%녹%';

--커뮤니티
DROP TABLE COMMUNITY PURGE;
CREATE TABLE COMMUNITY(
	SEQ  				NUMBER PRIMARY KEY,
	CATEGORY		VARCHAR2(15),
	WRITER			VARCHAR2(15),
	SUBJECT  		VARCHAR2(50),
	CMNT_FILE		VARCHAR2(1000),
	CONTENT	  	VARCHAR2(4000),
	CMNT_DATE	DATE DEFAULT SYSDATE,
	READCOUNT	NUMBER
);
delete from community;
SELECT * FROM COMMUNITY; where seq between 1 and 10 and subject like '%인생%' ;
insert into community values(1,'레시피','김추천','제 인생레시피 공유합니다!','레시피.jpg','다들 꼭 드셔보세요. 레시피도 진짜 쉬워요!',sysdate,0);
insert into community values(2,'식당정보','박채식','너무 맛있다~','추천.jpg','추천추천',sysdate,0);
insert into community values(3,'레시피','김추천','제 인생레시피 공유합니다!','레시피.jpg','다들 꼭 드셔보세요. 레시피도 진짜 쉬워요!',sysdate,0);
insert into community values(4,'식당정보','박채식','너무 맛있다~','추천.jpg','추천추천',sysdate,0);
insert into community values(5,'레시피','김추천','제 인생레시피 공유합니다!','레시피.jpg','다들 꼭 드셔보세요. 레시피도 진짜 쉬워요!',sysdate,0);
insert into community values(6,'식당정보','박채식','너무 맛있다~','추천.jpg','추천추천',sysdate,0);
insert into community values(7,'레시피','김추천','제 인생레시피 공유합니다!','레시피.jpg','다들 꼭 드셔보세요. 레시피도 진짜 쉬워요!',sysdate,0);
insert into community values(8,'식당정보','박채식','너무 맛있다~','추천.jpg','추천추천',sysdate,0);
insert into community values(9,'레시피','김추천','제 인생레시피 공유합니다!','레시피.jpg','다들 꼭 드셔보세요. 레시피도 진짜 쉬워요!',sysdate,0);
insert into community values(10,'식당정보','박채식','너무 맛있다~','추천.jpg','추천추천',sysdate,0);
insert into community values(11,'레시피','김추천','제 인생레시피 공유합니다!','레시피.jpg','다들 꼭 드셔보세요. 레시피도 진짜 쉬워요!',sysdate,0);
insert into community values(12,'식당정보','박채식','너무 맛있다~','추천.jpg','추천추천',sysdate,0);