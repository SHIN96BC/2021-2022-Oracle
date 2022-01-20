< ���� (FUNCTION) >

(1) EMP Table���� �̸�, �޿�, Ŀ�̼� �ݾ�, �Ѿ�(sal+comm)�� ���Ͽ� �Ѿ��� 
    ���� ������ ����϶�. ��, Ŀ�̼��� NULL�� ����� �����Ѵ�. 

  A)  select ENAME, SAL, COMM, sum(SAL+COMM) from EMP where COMM is not null group by ENAME, SAL, COMM order by		    sum(SAL+COMM) desc;
 
(2) 10�� �μ��� ��� ����鿡�� �޿��� 13%�� ���ʽ��� �����ϱ�� �Ͽ���.
    �̸�, �޿�, ���ʽ� �ݾ�, �μ� ��ȣ�� ����϶�.

  A) select ENAME, SAL, SAL*0.13 "���ʽ� �ݾ�", DEPTNO from EMP where DEPTNO=10;


(3) 30�� �μ��� ������ ����Ͽ� �̸�, �μ���ȣ, �޿�, ������ ����϶�.
    ��, ������ �޿��� 150%�� ���ʽ��� �����Ѵ�. 

  A) select ENAME, DEPTNO, SAL, sum(SAL*11+SAL*1.5) "����" from EMP where DEPTNO=30 group by ENAME,DEPTNO,SAL;
   
(4) �μ� ��ȣ�� 20�� �μ��� �ð��� �ӱ��� ����Ͽ� ����϶�.
    ��, 1���� �ٹ��ϼ��� 12���̰�, 1�� �ٹ��ð��� 5�ð��̴�.
    ��¾���� �̸�, �޿�, �ð��� �ӱ�(�Ҽ����� 1��° �ڸ����� �ݿø�)
    �� ����϶�. 

  A) select ENAME, SAL, round(SAL/12/5) "�ð��� �ӱ�" from EMP where DEPTNO=20;


(5) �޿��� $1,500 ���� $3,000 ������ ����� �޿��� 15%�� ȸ��� �����ϱ�� �Ͽ���.
    �̸� �̸�, �޿�, ȸ��(-2�ڸ����� �ݿø�)�� ����϶�.

  A) select ENAME, SAL, trunc(SAL*0.15, 2) "ȸ��" from EMP where SAL between 1500 and 3000;

	   
(6) �޿��� $2,000 �̻��� ��� ����� �޿��� 15%�� ������� ����� �Ͽ���. 
    �̸�, �޿�, ������(�Ҽ��� ���� ����)�� ����϶�.

  A) select ENAME, SAL, floor(SAL*0.15) "������" from EMP where SAL>2000;

(7) �Ի��Ϻ��� ���ݱ����� ��¥���� ����϶�.
    �μ� ��ȣ, �̸�, �Ի���, ������, �ٹ��ϼ�(�Ҽ��� ���� ����), 
	�ٹ����(�ݿø�),�ٹ�����(30�� ����,�ݿø�), �ٹ��ּ�(�ݿø�)�� ����϶�.

  A) select DEPTNO, ENAME, HIREDATE, SYSDATE, trunc(SYSDATE-HIREDATE), round((SYSDATE-HIREDATE+1)/365),          
     MONTHS_BETWEEN(SYSDATE, HIREDATE), round((SYSDATE-HIREDATE+1)/7) from EMP;

(8) ��� ����� �Ǽ��ɾ��� ����Ͽ� ����϶�.
    ��, �޿��� ���� ������ �̸�, �޿�, �Ǽ��ɾ��� ����϶�
    (�Ǽ��ɾ��� �޿��� ���� 10%�� ������ �� �ݾ�)

  A) select ENAME, SAL, SAL-SAL*0.1 "�Ǽ��ɾ�" from EMP order by SAL desc;


(9) �Ի��Ϸκ��� 90���� ���� ���� ��� �̸�, �Ի���, 90�� ���� ��, �޿��� ����϶�.

  A)  select ENAME, HIREDATE, HIREDATE+ 90, SAL from EMP;

(10) �Ի��Ϸκ��� 6������ ���� ���� �Ի���, 6���� ���� ��¥, �޿��� ����϶�.

  A) select HIREDATE, HIREDATE+180 "6������", SAL from EMP;

(11) �Ի��� ���� �ٹ��ϼ��� ����Ͽ� �μ���ȣ, �̸�, �Ի���, �ٹ��ϼ��� ����϶�.

  A) select DEPTNO , ENAME , HIREDATE , (last_day(HIREDATE)-HIREDATE) as �Ի��Ѵ��Ǳٹ��ϼ� from EMP;

(12) ��� ����� 60���� ���� ���� 'MONDAY'�� �� ��, �� ��, �� �� �ΰ��� ���Ͽ�
     �̸�, �Ի���, 'MONDAY'�� ����϶�.

  A) select ENAME, HIREDATE, next_day(HIREDATE+60, 2) "60���Ŀ�����" from EMP;

(13) �Ի��Ϸκ��� ���ñ����� �ϼ��� ���Ͽ� �̸�, �Ի���, �ٹ��ϼ�(�ݿø�)�� 
     ����϶�.

  A) select ENAME, HIREDATE, round(SYSDATE-HIREDATE) "�Ի��Ϸκ��� ����" from EMP;

(14) �Ի����� '1996�� 5�� 14��'�� ���·� �̸�, �Ի����� ����϶�.
 
  A) select ENAME, to_char(HIREDATE, 'fmYYYY"��"MM"��"DD"��"') "�Ի���" from EMP;

(15) �̸��� ���ڼ��� 6�� �̻��� ����� �̸��� �տ��� 3�ڸ� ���Ͽ� 
     �ҹ��ڷ� �̸����� ����϶�.
  A) select lower(ENAME) from EMP where length(ENAME)>=6;

(16) 10�� �μ� ������ ���, �ְ�, ����, �ο����� ���Ͽ� ����϶�.
 
  A) select lower(substr(ENAME, 1,3)) from EMP where length(ENAME)>=6;

(17) �� �μ��� �޿��� ���, �ְ�, ����, �ο����� ���Ͽ� ����϶�.
     (�μ���ȣ�� ���)
	
  A) select round(avg(SAL)) "���", MAX(SAL), MIN(SAL), length(DEPTNO), DEPTNO from EMP group by DEPTNO;


(18) �� �μ��� ���� ������ �ϴ� ����� �ο����� ���Ͽ� �μ���ȣ, ������, �ο����� ����϶�.

  A) select DEPTNO, JOB, count(*) "�ο���" from EMP group by DEPTNO, JOB;

(19) ���� ������ �ϴ� ����� ���� 4�� �̻��� ������ �ο����� ����϶�.
   
  A) select  JOB, count(*) "�ο���" from EMP group by JOB having count(*)>=4;

(20) �� �μ��� ��� ����, ��ü ����, �ְ� ����, ���� ������ ���Ͽ� ��� ������ 
     ���� ������ ����϶�. (�μ���ȣ�� ���)
   
  A) select DEPTNO, round(avg(SAL)) "���", sum(SAL) "��ü", max(SAL) "�ְ�", min(SAL) "����" from EMP group by DEPTNO 
     order by avg(SAL) desc;


