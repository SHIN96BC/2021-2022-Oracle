 < ���� (JOIN & SUB-QUERY) >

(1) EMP�� DEPT TABLE�� JOIN�Ͽ� �μ���ȣ, �μ���, �̸�, �޿��� ����϶�.

	A) select e.DEPTNO, d.DNAME, e.ENAME, e.SAL from EMP e, DEPT d where e.DEPTNO=d.DEPTNO;
 
(2) �̸��� 'ALLEN'�� ����� �μ����� ����϶�.

	A) select d.DNAME from DEPT d, EMP e where e.DEPTNO=d.DEPTNO and e.ENAME='ALLEN';
  
(3) EMP Table�� �ִ� DATA�� JOIN�Ͽ� ��� ����� �̸�, �μ���ȣ, �μ���, �޿��� ����϶�.

	A) select e.DEPTNO, d.DNAME, e.ENAME, e.SAL from EMP e, DEPT d where e.DEPTNO=d.DEPTNO;
  
(4) EMP Table�� �ִ� EMPNO�� MGR�� �̿��Ͽ� ������ ���踦 ������ ���� ����϶�.
    --> SMITH�� �Ŵ����� FORD�̴�.

	A) select e.ENAME||'�� �Ŵ����� ' || m.ENAME||'�̴�' from EMP e, EMP m where e.MGR=m.EMPNO and e.ENAME='SMITH';

(5) 'ALLEN'�� ������ ���� ����� �̸�, �μ���, �޿�, ������ ����϶�.

	A) select ENAME, SAL, JOB from EMP where JOB=(select JOB from EMP where ENAME='ALLEN') and ENAME!='ALLEN';

(6) 'JONES'�� �����ִ� �μ��� ��� ����� �μ���ȣ, �����ȣ, �̸�, �Ի���, 
   �޿��� ����϶�.

    A) select DEPTNO, EMPNO, ENAME, HIREDATE from EMP where DEPTNO=all(select DEPTNO from EMP where ENAME='JONES');

(7) ��ü ����� ����ӱݺ��� ���� ����� �����ȣ, �̸�, �μ���, �Ի���, ����, 
    �޿��� ����϶�. 

	A) select e.EMPNO, e.ENAME, d.DNAME, e.HIREDATE, d.LOC, e.SAL from EMP e, DEPT d where e.DEPTNO=d.DEPTNO and 
	   SAL>(select round(avg(SAL)) from EMP);

(8) 10�� �μ� ����� �߿� 20�� �μ��� ����� ���� ������ �ϴ� ����� �����ȣ, 
    ����, �̸�, �μ���, �Ի���, ������ ����϶�. 

	A) select e.DEPTNO, e.JOB, e.ENAME, d.DNAME, e.HIREDATE, d.LOC from EMP e, DEPT d where e.DEPTNO=10 and 
	   e.DEPTNO=d.DEPTNO and e.JOB=any(select JOB from EMP where DEPTNO=20);

(9) 10�� �μ��߿��� 30�� �μ����� ���� ������ �ϴ� ����� �����ȣ, ����, 
    �̸�, �μ���, �Ի���, ������ ����϶�.

	A) select e.DEPTNO, e.JOB, e.ENAME, d.DNAME, e.HIREDATE, d.LOC from EMP e, DEPT d where e.DEPTNO=d.DEPTNO and
       e.DEPTNO=10 and JOB!=all(select JOB from EMP where DEPTNO=30);

(10) 10�� �μ��� ���� ���� �ϴ� ����� �����ȣ, ����, �̸�, �μ���ȣ, �μ���, 
   ����, �޿��� �޿��� ���� ������ ����϶�.

   A) select e.EMPNO, e.JOB, e.ENAME, e.DEPTNO, d.DNAME, d.LOC, e.SAL from EMP e, DEPT d where e.DEPTNO=d.DEPTNO and 
      JOB=any(select JOB from EMP where DEPTNO=10) and e.DEPTNO!=10 order by e.SAL desc;

(11) 'MARTIN'�̳� 'SCOTT'�� �޿��� ���� ����� �����ȣ, �̸�, �޿��� ����϶�.
  
   A) select DEPTNO, ENAME, SAL from EMP where SAL=(select SAL from EMP where ENAME='MARTIN') or SAL=(select SAL 
      from EMP where ENAME='SCOTT');

(12) �޿��� 30�� �μ��� �ְ� �޿����� ���� ����� �����ȣ, �̸�, �޿��� ����϶�.
  
   A) select DEPTNO, ENAME, SAL from EMP where SAL>all(select SAL from EMP where DEPTNO=30);

(13) �޿��� 30�� �μ��� ���� �޿����� ���� ����� �����ȣ, �̸�, �޿��� ����϶�.
  
   A) select DEPTNO, ENAME, SAL from EMP where SAL<all(select SAL from EMP where DEPTNO=30);