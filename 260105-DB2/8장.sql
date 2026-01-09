SELECT 
      e.empno
    , e.ename
    , e.deptno
    , d.deptno
    , d.dname
    , d.loc
-- from emp e, dept d, salgrade s
from emp e 
    join dept d on (e.deptno = d.deptno) 
    join SALGRADE s
-- where e.deptno = d.deptno

    
;

SELECT 
      e.ename, d.*
from emp e, dept d
where e.deptno = d.deptno
and d.loc = 'CHICAGO';


CREATE VIEW vw_emp_dept as (
SELECT 
      e.empno
    , e.ename
    , e.deptno
    , d.deptno as dept_no
    , d.dname
    , d.loc
from emp e, dept d
where e.deptno = d.deptno
)
--   and e.sal <= 2500
--   and e.empno <= 9999;
;


select * 
from emp e, SALGRADE s
where e.sal <=  s.hisal
ORDER by empno
;


SELECT 
    e1.empno 
    ,e1.ename
    ,e1.mgr
    ,e2.empno
    ,e2.ename
FROM emp e1, emp e2
where e1.mgr = e2.empno(+);


SELECT 
     e.empno 
    ,e.ename
    ,e.deptno
    ,d.deptno as dno
    ,d.dname
FROM emp_tem e, dept_tem d
where e.deptno(+) = d.deptno;


SELECT 
    e1.empno 
    ,e1.ename
    ,e1.mgr
    ,e2.empno
    ,e2.ename
FROM emp e1, emp e2
where e2.empno = e1.mgr(+);