-- emp테이블, 입사 20주년 되는 날짜를 구하시오.
-- 표시는 사번, 이름, 입사일, 20주년일
SELECT 
     ename, hiredate, months_between(hiredate, sysdate)
from emp
where add_months(hiredate, 480)  < sysdate;

SELECT 
    to_char(SAL, 'L999,999')
    , ENAME
    , to_char(1287312, 'L000,999,999')
    , LENGTH(SAL)
from EMP
ORDER BY LENGTH(SAL) DESC;


SELECT 
    to_NUMBER('1,333', '999,999') + 1

from EMP
ORDER BY LENGTH(SAL) DESC;


-- 최초 입사자와 각각 입사자의 근무일차를 구하시오.
-- 사번, 이름, 입사일, 차이일
-- 1. 최초입사자, 그일자를 카피(문자), 날짜 - 날짜
-- 그렇다면.... 최초입사자와 1년 이상 차이나는 사람을 조회.
SELECT ENAME, hiredate, hiredate - TO_DATE('1980-12-17')
FROM EMP
WHERE (hiredate - TO_DATE('1980-12-17')) >= 365
ORDER BY HIREDATE;
-- 1980-12-17T00:00

SELECT
    NVL(COMM,0)
    ,NVL2(COMM,COMM,'0') 
    ,COMM
FROM EMP;

SELECT EMPNO, ENAME, COMM,
       NVL2(COMM, 'O', 'X'),
       DECODE(COMM,0,'X',NULL,'X',
                'O'),
       NVL2(COMM, SAL*12+COMM, SAL*12) AS ANNSAL
  FROM EMP;

/*
NVL
IF VALUE != NULL THEN
    RETURN VALUE
ELSE 
    TEXT, NUMBER
END

NVL2
IF VALUE != NULL THEN
    TEXT, NUMBER
ELSE 
    TEXT, NUMBER
END


DECODE(1,
    2,3,
    4,5,
    6)
IF 1 == 2 THEN
    3
ELSE
    4
END



*/
SELECT EMPNO, ENAME, JOB, SAL,
       DECODE(JOB,
              'MANAGER' , 1,
              'SALESMAN', 2,
              'ANALYST' , 3,
              4) AS UPSAL
  FROM EMP;


SELECT EMPNO, ENAME, JOB, SAL,COMM,
       CASE 
             WHEN JOB = 'MANAGER' THEN 1
             WHEN ENAME = 'SMITH' THEN 2
             WHEN COMM IS NULL THEN 3
             ELSE 4
        END AS UPSAL
  FROM EMP;


SELECT EMPNO, ENAME, JOB, SAL,
       CASE COMM
          WHEN NULL THEN 'X'
          WHEN 0 THEN 'X'
          ELSE 'O'
       END AS UPSAL
  FROM EMP;



SELECT 1,'3' FROM DUAL
UNION ALL
SELECT 1, 3 FROM DUAL;


SELECT EMPNO, ENAME, COMM,
       CASE
          WHEN COMM IS NULL THEN '해당사항 없음'
          WHEN COMM = 0 THEN '수당없음'
          WHEN COMM > 0 THEN '수당 : ' || COMM
       END AS COMM_TEXT
  FROM EMP;

SELECT 
    EMPNO
    , SUBSTR(empno,1,2) || '**'
    , ENAME
    , SUBSTR(ENAME,1,1) || '****'
    , RPAD(SUBSTR(ENAME,1,1),LENGTH(ENAME),'*')
FROM EMP;

SELECT DEPTNO, JOB, SUM(SAL), SUM(COMM) 
FROM EMP
GROUP BY JOB,DEPTNO;

SELECT DEPTNO, COUNT(*), COUNT(COMM) 
FROM EMP
GROUP BY DEPTNO;

SELECT MAX(HIREDATE)
FROM EMP
WHERE DEPTNO = 10
UNION ALL
SELECT MAX(HIREDATE)
FROM EMP
WHERE DEPTNO = 20;



SELECT 
    NVL2(COMM,'O','X') AS EXIST_COMM
    , COUNT(*) AS CNT
FROM EMP
GROUP BY NVL2(COMM,'O','X')
;

SELECT 
    COMM
    , COUNT(*) AS CNT
    , COUNT(COMM) AS CNT
FROM EMP
where comm is null
GROUP BY COMM
;

select * 
from dept_tem
where deptno = 70;

update dept_tem
    set dname = '첫업',
        loc = '업업업'
where deptno = 70;    


delete 
from dept_tem
where deptno = 60;

insert into DEPT_TEM (deptno, dname, loc)
               values(80,     null,  '');
