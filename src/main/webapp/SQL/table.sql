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


--1:1 문의
DROP TABLE QAA PURGE;
CREATE TABLE QAA(
	seq 					NUMBER 	PRIMARY KEY,
	id				        VARCHAR2(50),
	category			VARCHAR2(50),
	subject  			VARCHAR2(200),
	content	  		VARCHAR2(2000),	
	image 	        VARCHAR2(300),
	re_ref       		NUMBER,
	re_lev      		NUMBER,
	status       	    VARCHAR2(50) default '등록 완료',
	qaa_date			DATE  default sysdate
	
);

select * from qaa;


--FAQ
drop table faq purge;

create table faq(
	seq    				number(5) primary key,
	title 					varchar2(300),
	writer	 			varchar2(20) default '관리자',
	content	 			varchar2(4000),
	regdate 			date default sysdate,
	cnt	 				number(5) default 0
);

select * from faq;


--장바구니
DROP TABLE BASKET PURGE;
CREATE TABLE BASKET
(
    MEMBER_SEQ NUMBER, --회원 seq
    GOODS_SEQ NUMBER,  --상품 seq
    AMOUNT    NUMBER, -- 장바구니에 담을 수량
    REG_DATE  DATE, -- 장바구니에 담긴 일자
    PRIMARY KEY (MEMBER_SEQ, GOODS_SEQ) -- 회원 seq,상품 seq는 고유값으로 지정
);

--결제
DROP TABLE GOODS_ORDER purge;
CREATE TABLE GOODS_ORDER(
	
	ORDER_TRADENUM VARCHAR2(100),   --추가: 주문번호 S20210314_member.seq_member_ordernum
	ORDER_NUM NUMBER,
	ORDER_GOODS_NUM	 NUMBER,
	ORDER_GOODS_NAME VARCHAR2(50),
	ORDER_GOODS_AMOUNT NUMBER, --전체 개수
	ORDER_GOODS_IMAGE VARCHAR2(50),
	ORDER_GOODS_PRICE NUMBER,
	ORDER_GOODS_COUNT NUMBER, --고객 주문 개수
	ORDER_MEMBER_ID VARCHAR2(20),
	ORDER_MEMBER_SEQ NUMBER,		--추가: 고객 번호 member.seq
	ORDER_MEMBER_ORDERNUM NUMBER,	--추가: 고객의 주문건수
	ORDER_RECEIVE_NAME VARCHAR2(20),
	ORDER_RECEIVE_ADDR1 VARCHAR2(70),
	ORDER_RECEIVE_ADDR2 VARCHAR2(70),
	ORDER_RECEIVE_PHONE VARCHAR2(13),
	ORDER_RECEIVE_MOBILE VARCHAR2(13), 
	ORDER_RECEIVE_EMAIL VARCHAR2(25), 
	ORDER_RECEIVE_ZIPCODE1 VARCHAR2(13), 
	ORDER_RECEIVE_ZIPCODE2 VARCHAR2(13), 
	ORDER_MEMO VARCHAR2(3000),
	ORDER_SUM_MONEY NUMBER,
	ORDER_TRADE_TYPE VARCHAR2(20),
	ORDER_TRADE_DATE DATE DEFAULT SYSDATE,
	ORDER_TRADE_PAYER VARCHAR2(20),
	ORDER_DATE DATE DEFAULT SYSDATE,
	ORDER_STATUS NUMBER

);

drop table checkout_temp_lolo purge

select * from goods_order;

select * from basket


		SELECT
			O.ORDER_NUM		AS order_num,
			O.ORDER_TRADENUM		AS order_tradenum,
			O.ORDER_GOODS_NAME	AS order_goods_name,
			O.ORDER_GOODS_IMAGE		AS order_goods_image,
			O.ORDER_GOODS_PRICE		AS order_goods_price,
			O.ORDER_GOODS_COUNT		AS order_goods_count,
			O.ORDER_MEMBER_ID		AS order_member_id,
			O.ORDER_SUM_MONEY		AS order_sum_money,
			O.ORDER_STATUS		AS order_status,
			O.ORDER_DATE		AS order_date
		FROM GOODS_ORDER O 
		WHERE O.ORDER_MEMBER_SEQ = 1
		
