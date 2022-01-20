--1. ���̹�
drop table POST;
drop table UTABLE;
drop table BOARD;



purge recyclebin;

--1. �Խ���
create table BOARD(BNO number(10) constraint BNO_PK primary key, PORTALNO number(4), BNAME varchar(30));

--2. ȸ�� 
create table UTABLE(ID varchar(30) constraint ID_PK primary key, UNAME varchar(100), PWD varchar(100), BNO number(10));
alter table UTABLE add constraint UTABLE_FK foreign key(BNO) references BOARD(BNO) on delete cascade;

--3. �Խñ�
create table POST(PNO number(10) constraint PNO_PK primary key, PNAME varchar(300), PCONTENT varchar(3000), ID varchar(30), BNO number(10), PDATE varchar(20));
alter table POST add constraint POST_FK foreign key(ID) references UTABLE(ID) on delete cascade;
alter table POST add constraint BNO_FK foreign key(BNO) references BOARD(BNO) on delete cascade;

--�Խ��� ����
insert into BOARD values(1, 1, '�ƹ����Խ���');
insert into BOARD values(2, 1, '�߰��Ǹ�');
insert into BOARD values(3, 1, '��������');



--ȸ������
insert into UTABLE values('hon', 'ȫ�浿', 'hihihon', 1);
insert into UTABLE values('lee', '�̼���', 'lee222', 1);
insert into UTABLE values('kang', '������', 'kangkang5', 2);
insert into UTABLE values('hani', '�ϴ�', 'hanihi', 2);
insert into UTABLE values('son', '�۽¿�', 'son3456', 3);
insert into UTABLE values('jang', '�嵿��', 'jjj666', 3);
insert into UTABLE values('kim', '������', '123890', 1);
insert into UTABLE values('jo', '���ϼ�', 'jojo8', 2);
insert into UTABLE values('park', '�ڼ���', 'park777', 3);



--�Խñ�
insert into POST values(1, '�ȳ��ϼ���', '�ȳ��ϼ���. �ߺ�Ź�ؿ�', 'hon', 1, '21/12/13');
insert into POST values(2, '��������', '�ȳ��ϼ���. �ߺ�Ź�ؿ�', 'lee', 1, '21/12/14');
insert into POST values(3, '�ڵ����˴ϴ�', '�ڵ��� 100������ �Ⱦƿ�~~', 'kang', 2, '21/12/13');
insert into POST values(4, '���˴ϴ�', '���ǽ� 3�� �Ǹ��մϴ�!!', 'hani', 2, '21/12/16');
insert into POST values(5, '������ �����մϴ�', '���Ի�� ä���մϴ�. 12/31 ���� �̷¼� �������ּ���.', 'son', 3, '21/12/15');
insert into POST values(6, '�繫�� �����մϴ�.', '�繫�ǿ��� �ٹ��ϽǺ�~~~ �����ּ���!!', 'jang', 3, '21/12/18');
insert into POST values(7, '�츮�� �����', '�츮�� ����� �ʹ� �Ϳ����� ����', 'kim', 1, '21/12/21');
insert into POST values(8, 'Ŀ�Ǹӽ� �Ⱦƿ�~', 'Ŀ�Ǹӽ� 30������ �Ǹ��մϴ�!!', 'jo', 2, '21/12/22');
insert into POST values(9, 'ī�� �˹� ���ؿ�', '@@ī�信�� �ٹ��ϰ� �����ź��� �����ּ���', 'park', 3, SYSDATE);


-- �������� Ȯ��
select CONSTRAINT_NAME, CONSTRAINT_TYPE from user_constraints where TABLE_NAME='BOARD';
select CONSTRAINT_NAME, CONSTRAINT_TYPE from user_constraints where TABLE_NAME='UTABLE';
select CONSTRAINT_NAME, CONSTRAINT_TYPE from user_constraints where TABLE_NAME='POST';


-- ���̺� ���� Ȯ�� 
desc BOARD
desc UTABLE
desc POST

-- ���̺� ������ Ȯ�� 
select * from BOARD;
select * from UTABLE;
select * from POST;


--���� ���ϴ� ���
select PNAME, PCONTENT from POST where ID='park';
select UNAME, ID, BNO from UTABLE;
select p.PNAME, p.PCONTENT, p.PNO, u.UNAME from UTABLE u, POST p where p.ID=u.ID and p.ID='lee';