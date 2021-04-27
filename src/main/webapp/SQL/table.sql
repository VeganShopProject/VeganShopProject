--회원가입
DROP TABLE MEMBER purge;
CREATE TABLE MEMBER(
	SEQ  					NUMBER PRIMARY KEY,
	ID 					VARCHAR2(30),
	PW 					VARCHAR2(24),
	NAME 				VARCHAR2(20),
	EMAIL				VARCHAR2(25),
	EMAIL_GET 		VARCHAR2(7),
	ZIPCODE1			NUMBER,
	ZIPCODE2			NUMBER,
	PHONE 				NUMBER,
	ADDR1 				VARCHAR2(70),
	ADDR2 				VARCHAR2(70),
	BIRTH				NUMBER,
	MEMBER_DATE 	DATE DEFAULT SYSDATE
	
);

update member set pw='user' where id='user';

select * from MEMBER;
--ADMIN을 무조건 1번으로 해주세요.
insert into member values(1,'admin','admin','관리자',0,0,'','','','','','',sysdate);
insert into member values(2,'heejin','heejin1','장희진','hjjang7308@gmail.com','yes',111,111,01011111111,'집1','상세1',940616,sysdate);
delete from member where seq=2; and seq<=4;
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
	READCOUNT	NUMBER,
	REPLY_CONTENT	VARCHAR2(1000)
);

SELECT * FROM COMMUNITY;
insert into community values(1,'레시피','김추천','제 인생레시피 공유합니다!','레시피.jpg','다들 꼭 드셔보세요. 레시피도 진짜 쉬워요!',sysdate,0,'');
insert into community values(2,'식당정보','박채식','너무 맛있다~','추천.jpg','추천추천',sysdate,0,'');
insert into community values(3,'레시피','김추천','제 인생레시피 공유합니다!','레시피.jpg','다들 꼭 드셔보세요. 레시피도 진짜 쉬워요!',sysdate,0,'');
insert into community values(4,'식당정보','박채식','너무 맛있다~','추천.jpg','추천추천',sysdate,0,'');
insert into community values(5,'레시피','김추천','제 인생레시피 공유합니다!','레시피.jpg','다들 꼭 드셔보세요. 레시피도 진짜 쉬워요!',sysdate,0,'');
insert into community values(6,'식당정보','박채식','너무 맛있다~','추천.jpg','추천추천',sysdate,0,'');
insert into community values(7,'레시피','김추천','제 인생레시피 공유합니다!','레시피.jpg','다들 꼭 드셔보세요. 레시피도 진짜 쉬워요!',sysdate,0,'');
insert into community values(8,'식당정보','박채식','너무 맛있다~','추천.jpg','추천추천',sysdate,0,'');
insert into community values(9,'레시피','김추천','제 인생레시피 공유합니다!','레시피.jpg','다들 꼭 드셔보세요. 레시피도 진짜 쉬워요!',sysdate,0,'');
insert into community values(10,'식당정보','박채식','너무 맛있다~','추천.jpg','추천추천',sysdate,0,'');
insert into community values(11,'레시피','김추천','제 인생레시피 공유합니다!','레시피.jpg','다들 꼭 드셔보세요. 레시피도 진짜 쉬워요!',sysdate,0,'');
insert into community values(12,'식당정보','박채식','너무 맛있다~','추천.jpg','추천추천',sysdate,0,'');


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

drop table checkout_temp_user purge

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
select * from basket
select 
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

select * from goods_order;

insert into goods_order() values() 



--레시피 
DROP TABLE RECIPE PURGE;
CREATE TABLE RECIPE(
		RECIPE_NUMBER			NUMBER,
		RECIPE_CATEGORY			VARCHAR2(100),
		RECIPE_NAME  			VARCHAR2(100),
		RECIPE_INGREDIENT		VARCHAR2(1000),
		RECIPE_CONTENT	  		VARCHAR2(4000),
		RECIPE_IMAGE01			VARCHAR2(100),
		RECIPE_IMAGE02			VARCHAR2(100),
		RECIPE_IMAGE03			VARCHAR2(100),
		RECIPE_DATE				DATE DEFAULT SYSDATE
);
SELECT * FROM RECIPE;  

--상품 등록
DROP TABLE GOODS PURGE;
CREATE TABLE GOODS(
		SEQ				NUMBER,
		CATEGORY 		VARCHAR2(20),
		NAME 			VARCHAR2(100),
		SHORTCO			VARCHAR2(100),
		CONTENT 		VARCHAR2(4000),
		AMOUNT 			NUMBER,
		PRICE 			NUMBER,
		IMAGE01 		VARCHAR2(100),
		IMAGE02 		VARCHAR2(100),
		IMAGE03 		VARCHAR2(100),
		BEST 			NUMBER,
		GOODS_DATE 		DATE	DEFAULT SYSDATE 
);
SELECT * FROM GOODS;

update goods set amount=4;

update goods 
inner join goods_order 
on goods.seq = goods_order.order_goods_num 
SET goods.amount = goods_order.order_goods_amount
where goods_order.order_num=(select max(order_num) from goods_order) 
 select goods_order.order_num from goods_order (select max(order_num) from goods_order) 
;

update goods set amount=goods_order.order_goods_num

select order_num, order_goods_num, order_goods_amount from goods_order where order_num=(select max(order_num) from goods_order)

update goods set amount=(select order_goods_amount from goods_order where goods_order.order_num=(select max(order_num) from goods_order)) 
where seq=goods_order.order_goods_amount
goods_order.order_goods_num 

select * from goods_order;

UPDATE S
SET    S.Student_Group_Name = G.Group_Name
FROM   dbo.Students S
INNER JOIN dbo.Groups G ON S.Student_Group = G.Group_ID


update GOODS 
set GOODS.AMOUNT=O.ORDER_GOODS_AMOUNT 
from GOODS 
INNER JOIN (SELECT ORDER_NUM, ORDER_GOODS_NUM, ORDER_GOODS_AMOUNT FROM  GOODS_ORDER WHERE ORDER_NUM=(SELECT MAX(ORDER_NUM) FROM GOODS_ORDER)) O
ON GOODS.SEQ = O.ORDER_GOODS_NUM;

UPDATE GOODS SET amount=order_goods_amount 
where 

SELECT * 
FROM GOODS 
JOIN (SELECT ORDER_NUM, ORDER_GOODS_NUM, ORDER_GOODS_AMOUNT FROM  GOODS_ORDER WHERE ORDER_NUM=(SELECT MAX(ORDER_NUM) FROM GOODS_ORDER)) O 
ON GOODS.SEQ = O.ORDER_GOODS_NUM; 

CREATE TABLE GOODS_ORDER_7 AS 
SELECT ORDER_NUM, ORDER_GOODS_NUM, ORDER_GOODS_AMOUNT 
FROM  GOODS_ORDER WHERE ORDER_NUM=(SELECT MAX(ORDER_NUM) FROM GOODS_ORDER)

MERGE INTO goods m 
USING GOODS_ORDER_7 o 
ON (m.seq = o.ORDER_GOODS_NUM) 
WHEN MATCHED THEN UPDATE SET m.amount = o.ORDER_GOODS_AMOUNT;

select * from goods_order;
select * from goods

MERGE INTO GOODS G  
USING (SELECT ORDER_NUM, ORDER_GOODS_NUM, ORDER_GOODS_AMOUNT 
FROM  GOODS_ORDER WHERE ORDER_NUM=(SELECT MAX(ORDER_NUM) FROM GOODS_ORDER)) O  
ON (G.SEQ = O.ORDER_GOODS_NUM) 
WHEN MATCHED THEN UPDATE SET G.AMOUNT = O.ORDER_GOODS_AMOUNT;

SELECT * FROM GOODS_ORDER_7
SELECT * FROM GOODS;

UPDATE GOODS 
SET 
GOODS.AMOUNT = GOODS_ORDER_7.ORDER_GOODS_AMOUNT 
where goods.seq=3 
FROM GOODS  
INNER JOIN GOODS_ORDER_7 
ON GOODS.SEQ = GOODS_ORDER_7.ORDER_GOODS_NUM

UPDATE GOODS 
SET AMOUNT = (SELECT ORDER_GOODS_AMOUNT FROM GOODS_ORDER_7) 
where seq= (select ORDER_GOODS_NUM from GOODS_ORDER_7)



select * from goods


UPDATE GOODS 
SET AMOUNT = (select top(1) GOODS_ORDER_7.ORDER_GOODS_AMOUNT from GOODS_ORDER_7);


UPDATE system_info
SET field_value = 'NewValue' 
WHERE field_desc IN (SELECT role_type 
                     FROM system_users 
                     WHERE user_name = 'uname')




UPDATE Per 
SET 
Per.PersonCityName=Addr.City, 
Per.PersonPostCode=Addr.PostCode
FROM Persons Per
INNER JOIN
AddressList Addr
ON Per.PersonId = Addr.PersonId



UPDATE goods
SET goods.amount = goods_order.order_goods_amount where goods_order.order_num=(select max(order_num) from goods_order) 
FROM   goods
INNER JOIN goods_order  ON goods.seq = goods_order.order_goods_num
			;
drop table checkout_temp_user purge

--댓글
DROP TABLE REVIEW PURGE;
CREATE TABLE REVIEW(
		SEQ					NUMBER,
		NAME				VARCHAR2(1000),
		USER_NAME			VARCHAR2(1000),
		CONTENT_NAME		VARCHAR2(1000),
		CONTENT				VARCHAR2(3000),
		IMAGE				VARCHAR2(1000),
		WRITE_DATE			DATE,
		STAR				NUMBER,
		READCOUNT			NUMBER
);
SELECT * FROM REVIEW;

insert into review(seq, name, user_name, content_name, image, content, write_date, star) 
		values((select nvl(max(seq), 0)+1 from review), "국교는 인정되지 아니하며,",  "user", "좋아요" , "ㅇㅇ", "잘쓰고 있어요", sysdate, "5");
insert into review(seq, name, user_name, content_name, image, content, write_date, star) 
		values((select nvl(max(seq), 0)+1 from review), "간의 조화를 통한 경제의 민주화를",  "user", "좋아요" , "ㅇㅇ", "잘쓰고 있어요", sysdate, "5");
insert into review(seq, name, user_name, content_name, image, content, write_date, star) 
		values((select nvl(max(seq), 0)+1 from review), "1212",  "박성웅", "좋아요" , "ㅇㅇ", "잘쓰고 있어요", sysdate, "5")
insert into review(seq, name, user_name, content_name, image, content, write_date, star) 
		values((select nvl(max(seq), 0)+1 from review), "1212",  "박성웅", "좋아요" , "ㅇㅇ", "잘쓰고 있어요", sysdate, "5")
SELECT * FROM NUMBER1
create table number1 as 
select * from goods;
declare i_cnt number;

begin;

 BEGIN EXECUTE IMMEDIATE 'checkout_temp_user';
  EXCEPTION WHEN OTHERS THEN NULL;
  END;

  select count(*) into i_cnt from all_tables where table_name = 'TEST01';

  if i_cnt > 0 then execute immediate 'drop table TEST01'; end if;

select * from checkout_temp_user
drop table checkout_temp_user purge;

  execute immediate 'create table TEST01 (b number(1))';

end;



