< ���� (SELECT) >

(1) �μ���ȣ�� 10���� �μ��� ��� �� �����ȣ, �̸�, ������ ����϶� 
	A) select EMPNO, ENAME, SAL from EMP where DEPTNO=10;

(2) �����ȣ�� 7369�� ��� �� �̸�, �Ի���, �μ���ȣ�� ����϶� 
	A) select ENAME, HIREDATE, DEPTNO from EMP where EMPNO=7369;

(3) �̸��� ALLEN �� ����� ��� ������ ����϶� 
    A) select ENAME, HIREDATE, DEPTNO from EMP where EMPNO=7369;

(4) �Ի����� 81/05/01 �� ����� �̸�, �μ���ȣ, ������ ����϶� 
	A) select ENAME, DEPTNO, SAL from EMP where HIREDATE='81/04/02';

(5) ������ MANAGER �� �ƴ� ����� ��� ������ ����϶� 
    A) select * from EMP where JOB!='MANAGER';

(6) �Ի����� 81/04/02 ���Ŀ� �Ի��� ����� ������ ����϶� 
    A) select * from EMP where HIREDATE>'81/04/02';

(7) �޿��� $800 �̻��� ����� �̸�, �޿�, �μ���ȣ�� ����϶� 
    A) select ENAME, SAL, DEPTNO from EMP where SAL>800;
    
(8) �μ���ȣ�� 20�� �̻��� ����� ��� ������ ����϶� 
    A) select * from EMP where DEPTNO>=20;

(9) �̸��� K�� �����ϴ� ������� ���� �̸��� ���� ����� �̸��� ����϶� 
    A) select ENAME from EMP where ENAME >'K' and not ENAME like 'K%';
    
(10) �Ի����� 81/12/09 ���� ���� �Ի��� ������� ��� ������ ����϶� 
    A) select * from EMP where HIREDATE<'81/12/09';

(11) �Ի��ȣ�� 7698���� �۰ų� ���� ������� �Ի��ȣ�� �̸��� ����϶�
    A) select MGR, ENAME from EMP where MGR<=7698;
     
(12) �Ի����� 81/04/02 ���� �ʰ� 82/12/09 ���� ���� ����� �̸�, ����, �μ���ȣ, �Ի��ȣ�� ����϶� 
    A) select ENAME, SAL, DEPTNO, MGR from EMP where HIREDATE>'81/04/02' and HIREDATE<'82/12/09';

(13) �޿��� 1,600 ���� ũ�� $3,000 ���� ���� ����� �̸�, ����, �޿��� ����϶� 
    A) select ENAME, JOB, SAL from EMP where SAL>1600 and SAL<3000;

(14) �����ȣ�� 7654�� 7782 ���� �̿��� ����� �Ի��ȣ, �̸��� ����϶� 
    A) select MGR, ENAME from EMP where not(EMPNO between 7654 and 7782);

(15) �̸��� B�� J������ ��� ����� �̸��� ����϶� 
    A) select ENAME from EMP where ENAME between 'B' and 'J' or ENAME like '%J%';

(16) �Ի����� 81�� �̿ܿ� �Ի��� ����� �Ի��ϰ� �̸��� ����϶� 
    A) select HIREDATE, ENAME from EMP where not( HIREDATE >'81/01/01' and HIREDATE<'81/12/31');
     
(17) ������ MANAGER�� SALESMAN�� ����� �̸��� ������ ����϶� 
    A) select ENAME, JOB from EMP where JOB = 'MANAGER' or JOB = 'SALESMAN';
     
(18) �μ���ȣ�� 20, 30���� ������ ��� ����� �̸�, �����ȣ, �μ���ȣ�� ����϶� 
    A) select ENAME, EMPNO, DEPTNO from EMP where not(DEPTNO in (20,30));

(19) �̸��� S�� �����ϴ� ����� �����ȣ, �̸�, �Ի���, �μ���ȣ�� ����϶� 
    A) select ENAME, HIREDATE, DEPTNO from EMP where ENAME like 'S%';

(20) �Ի����� 81�⵵�� ����� �Ի���, �̸��� ����϶� 
    A) select HIREDATE, ENAME from EMP where HIREDATE like '81%';

(21) �̸� �� A�ڰ� �� �ִ� ����� �Ի��ȣ, �̸��� ����϶� 
    A) select MGR, ENAME from EMP where ENAME like '%A%';

(22) �̸��� S�� �����ϰ� ������ ���ڰ� T�� ����� �̸��� ����϶� 
    A) select ENAME from EMP where ENAME like 'S%' and ENAME like '%T';

(23) �̸��� �� ��° ���ڰ� A�� ����� �̸��� ����϶� 
    A) select ENAME from EMP where ENAME like '_A%';

	 cf) �̸��� �� ��° ���ڰ� A�� ����� �̸��� ����϶� 
       A) select ENAME from EMP where ENAME like '__A%';

(24) Ŀ�̼��� NULL�� ����� �̸��� Ŀ�̼��� ����϶� 
    A) select ENAME, COMM from EMP where COMM is null;

(25) Ŀ�̼��� NULL�� �ƴ� ����� �̸��� Ŀ�̼��� ����϶� 
    A) select ENAME, COMM from EMP where COMM is not null;

(26) �μ���ȣ�� 30�� �μ��̰�, �޿��� $1,500 �̻��� ����� �̸�, �μ���ȣ, ������ ����϶�
    A) select ENAME, DEPTNO, SAL from EMP where DEPTNO=30 and SAL>1500;

(27) �̸��� ù ���ڰ� K �� �����ϰų� �μ���ȣ�� 30�� ����� �����ȣ, �̸�, �μ���ȣ�� ����϶� 
    A) select EMPNO, ENAME, DEPTNO from EMP where ENAME like 'K%' or DEPTNO=30;

(28) �޿��� $1,500 �̻��̰�, �μ���ȣ�� 30���� ��� �� ������ 
      MANAGER�� ����� �޿�, �μ���ȣ, ������ ����϶� 
	A) select SAL, DEPTNO, JOB from EMP where SAL>1500 and DEPTNO=30 and JOB='MANAGER';
                                   

(29) �μ���ȣ�� 30�� ����� �̸�,�����ȣ,�μ���ȣ�� �����ȣ�� ���� SORT(����)�϶�
    A) select ENAME, EMPNO, DEPTNO from EMP where DEPTNO=30 order by EMPNO asc;
      
(30) �̸��� �޿��� �����͸� �޿��� ���� ������ SORT �϶� 
    A) select ENAME, SAL from EMP order by SAL desc;

(31) �μ���ȣ�� ASCENDING SORT�� �� �޿��� ���� ��� ������ �̸�, �μ���ȣ, �޿��� ����϶� 
    A) select ENAME, DEPTNO, SAL from EMP order by DEPTNO, SAL desc;

(32) �μ���ȣ�� DESCENDING SORT�� ��, ���� ������ ASCENDING SORT, �޿� ������ DESCENDING SORT�϶�  
    A) select * from EMP order by DEPTNO desc, JOB, SAL desc;
     