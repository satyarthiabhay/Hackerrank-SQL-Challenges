--Problem: https://www.hackerrank.com/challenges/the-blunder/problem

SELECT CEIL( AVG(SALARY) - AVG(REPLACE(SALARY, '0', '') ) ) 
FROM EMPLOYEES;