drop table TR_MYHOME;
drop table TR_LOGIN;
drop table TR_MEMBER;
drop sequence TR_MYHOME_SEQ;
purge recyclebin;

-- 회원 
create table TR_MEMBER(
    ID varchar2(10) constraint TR_MEMBER_PK primary key, 
    PWD varchar2(10) constraint TR_MEMBER_PWD_NN not null, 
    NAME varchar2(20) constraint TR_MEMBER_NAME_NN not null, 
    EMAIL varchar2(20) constraint TR_MEMBER_UQ unique, 
    RDATE date
);
-- 로그인 
create table TR_LOGIN(
    ID varchar2(10), 
    PWD varchar2(10), 
    constraint TR_LOGIN_PK primary key(ID), 
    constraint TR_LOGIN_FK foreign key(ID) references TR_MEMBER(ID) on delete cascade
);
-- 홈페이지 
create table TR_MYHOME(
    SEQ number constraint TR_MYHOME_PK primary key, 
    ID varchar2(10) constraint TR_MYHOME_ID_NN not null, 
    HNAME varchar2(20) constraint TR_MYHOME_HNAME_NN not null, 
    TOTCOUNT number default 0, 
    HMSG varchar2(15), 
    CDATE date, 
    constraint TR_MYHOME_FK foreign key(ID) references TR_MEMBER(ID) on delete cascade
);
create sequence TR_MYHOME_SEQ start with 1 increment by 1 nocache;

select TNAME from tab;
select SEQUENCE_NAME from seq;
--select TR_MYHOME_SEQ.nextval from DUAL;


--Q1) trigger1:회원가입을 하면 
     -- '로그인 테이블'에 ID/PWD입력, 
     -- '홈페이지 테이블'에 시퀀스와 ID/HNAME에 입력되는 트리거 
create or replace trigger TRI_USER
after
   insert on TR_MEMBER for each row
   
begin
   
   insert into TR_LOGIN values(:NEW.ID, :NEW.PWD);
   insert into TR_MYHOME(SEQ, ID, HNAME) values(TR_MYHOME_SEQ.nextval,:NEW.ID, '이름없음');
   --update TR_MEMBER set :NEW.EMAIL="21/12/27";
end;
/

-- 날짜 설정
create or replace trigger TRI_DATE  
after
   insert on TR_MEMBER
   
begin
   update TR_MEMBER set RDATE=SYSDATE;
end;
/


insert into TR_MEMBER values('hon', '1234', '홍길동', 'hon@email.com', '21/12/26');
insert into TR_MEMBER values('lee', '5678', '이순신', 'lee@email.com', '21/12/26');
insert into TR_MEMBER values('son', '9012', '송송', 'son@email.com', '21/12/26');

--Q2) trigger2:회원비번수정시.. 로긴 테이블의 PWD도 수정되는 트리거 

create or replace trigger TRI_CHA
after
   update on TR_MEMBER for each row
    
begin
   update TR_LOGIN set PWD = :NEW.PWD where ID=:NEW.ID;
end;
/

update TR_MEMBER set PWD='700' where ID='lee';