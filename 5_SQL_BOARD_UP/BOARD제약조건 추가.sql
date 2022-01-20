drop table POST;
drop table UTABLE;
drop table BOARD;

purge recyclebin;
set linesize 120

--1. 게시판
create table BOARD(
    BNO number(10) constraint BNO_PK primary key, 
    PORTALNO number(4) constraint BOARDE_PORTALNO_NN not null, 
    BNAME varchar(30) constraint BOARDE_BNAME_NN not null
    );

--2. 회원 
create table UTABLE(
    ID varchar(30) constraint ID_PK primary key, 
    UNAME varchar(100), 
    PWD varchar(100) constraint UTABLE_PWD_NN not null, 
    BNO number(10) constraint UTABLE_BNO_NN not null,
    GENDER varchar(7) constraint UTABLE_CK check(GENDER in('남자', '여자'))
    );
alter table UTABLE add constraint UTABLE_FK foreign key(BNO) references BOARD(BNO) on delete cascade;
alter table UTABLE add constraint UTABLE_UNAME_UQ unique(UNAME);

--3. 게시글
create table POST(
    PNO number(10) constraint PNO_PK primary key, 
    PNAME varchar(300) constraint POST_PNAME_NN not null, 
    PCONTENT varchar(3000), 
    ID varchar(30) constraint POST_ID_NN not null, 
    BNO number(10) constraint POST_BNO_NN not null, 
    PDATE varchar(20) default SYSDATE
    );
alter table POST add constraint POST_FK foreign key(ID) references UTABLE(ID) on delete cascade;
alter table POST add constraint BNO_FK foreign key(BNO) references BOARD(BNO) on delete cascade;
create sequence POST_SEQ increment by 1 start with 1 nocache;
desc seq

--게시판 생성
insert into BOARD values(1, 1, '아무말게시판');
insert into BOARD values(2, 1, '중고판매');
insert into BOARD values(3, 1, '구직정보');



--회원생성
insert into UTABLE values('hon', '홍길동', 'hihihon', 1, '남자');
insert into UTABLE values('lee', '이순신', 'lee222', 1, '남자');
insert into UTABLE values('kang', '강감찬', 'kangkang5', 2, '남자');
insert into UTABLE values('hani', '하니', 'hanihi', 2, '여자');
insert into UTABLE values('son', '송승연', 'son3456', 3, '여자');
insert into UTABLE values('jang', '장유진', 'jjj666', 3, '여자');
insert into UTABLE values('kim', '김유신', '123890', 1, '남자');
insert into UTABLE values('jo', '조일성', 'jojo8', 2, '남자');
insert into UTABLE values('park', '박진희', 'park777', 3, '여자');



--게시글
insert into POST values(POST_SEQ.nextval, '안녕하세요', '안녕하세요. 잘부탁해요', 'hon', 1, '21/12/13');
insert into POST values(POST_SEQ.nextval, 'ㅎㅇㅎㅇ', '안녕하세요. 잘부탁해요', 'lee', 1, '21/12/14');
insert into POST values(POST_SEQ.nextval, '핸드폰팝니다', '핸드폰 100만원에 팔아여~~', 'kang', 2, '21/12/13');
insert into POST values(POST_SEQ.nextval, '옷팝니다', '원피스 3벌 판매합니다!!', 'hani', 2, '21/12/16');
insert into POST values(POST_SEQ.nextval, '개발자 구인합니다', '신입사원 채용합니다. 12/31 까지 이력서 제출해주세요.', 'son', 3, '21/12/15');
insert into POST values(POST_SEQ.nextval, '사무직 구인합니다.', '사무실에서 근무하실분~~~ 연락주세요!!', 'jang', 3, '21/12/18');
insert into POST values(POST_SEQ.nextval, '우리집 고양이', '우리집 고양이 너무 귀여워요 ㅎㅎ', 'kim', 1, '21/12/21');
insert into POST values(POST_SEQ.nextval, '커피머신 팔아요~', '커피머신 30만원에 판매합니다!!', 'jo', 2, '21/12/22');
insert into POST values(POST_SEQ.nextval, '카페 알바 구해요', '@@카페에서 근무하고 싶으신분은 연락주세요', 'park', 3, SYSDATE);


-- 제약조건 확인
select CONSTRAINT_NAME, CONSTRAINT_TYPE from user_constraints where TABLE_NAME='BOARD';
select CONSTRAINT_NAME, CONSTRAINT_TYPE from user_constraints where TABLE_NAME='UTABLE';
select CONSTRAINT_NAME, CONSTRAINT_TYPE from user_constraints where TABLE_NAME='POST';


-- 테이블 구조 확인 
desc BOARD
desc UTABLE
desc POST

-- 테이블 데이터 확인 
select * from BOARD;
select * from UTABLE;
select * from POST;


--고객이 원하는 결과
select PNAME, PCONTENT from POST where ID='park';
select UNAME, ID, BNO from UTABLE;
select p.PNAME, p.PCONTENT, p.PNO, u.UNAME from UTABLE u, POST p where p.ID=u.ID and p.ID='lee';