-- ## 5. 기본 문법 및 예시

-- ### 🔹 ① 오름차순 정렬 (기본값)

-- ```sql
SELECT * FROM EMP
ORDER BY SAL;
-- SAL


-- ### 🔹 ② 내림차순 정렬

-- ```sql
SELECT * FROM EMP
ORDER BY SAL DESC;
-- ```

---

-- ### 🔹 ③ 여러 열 기준으로 정렬 (각 열에 다른 정렬)

-- ```sql
SELECT * FROM EMP
ORDER BY DEPTNO ASC, SAL DESC;
-- ```

-- > 부서번호는 오름차순 → 부서 내에서는 급여를 높은 순으로 정렬

---


-- ### 🔹 ④ 열 인덱스로 정렬하기

-- ```sql
SELECT ENAME, JOB, SAL
FROM EMP
ORDER BY 3 DESC;
-- ```

-- > 3번째 열인 SAL을 기준으로 내림차순 정렬



-- ```
