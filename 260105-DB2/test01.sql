SELECT  count(*) 
    from emp e;
-- 15/5 = 3


select * 
from (
    SELECT 
        ROWNUM as rn
        , t1.* 
    from(
        SELECT 
            e.* 
        from emp e
        ORDER by sal
    ) t1
) t2    
where rn BETWEEN 11 and 15
-- WHERE A.RN BETWEEN ((2*5)+1) AND ((2*5) + 5)
-- where ROWNUM > 1
;

-- SELECT 
--     e.* 
-- from emp e
-- ORDER by sal
-- FETCH NEXT 5 ROWS only
-- OFFSET 5 ROWS FETCH NEXT 5 ROWS only
-- OFFSET ["페이지"*"페이지당 개수"] ROWS FETCH NEXT ["페이지당 갯수"] ROWS only;
;

-- a = select max(empno) from emp;
-- a += 1


insert into emp(empno,hiredate) values((select max(empno) +1 from emp), sysdate)
;

select * from emp;

