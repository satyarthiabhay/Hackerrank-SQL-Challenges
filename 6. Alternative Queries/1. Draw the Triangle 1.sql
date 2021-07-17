--Problem: https://www.hackerrank.com/challenges/draw-the-triangle-1/problem

/*
LEVEL refers to a Pseudocolumn in Oracle
DUAL is a dummy table automatically generated by Oracle
The CONNECT BY clause defines the hierarchical relationship between the parent rows and the child rows of the hierarchy.
LEVEL * 2 IS DONE BCOZ THE STARS ARE SPACE SEPARATED 
*/

SELECT RPAD('*', LEVEL*2,' *')          
FROM DUAL 
CONNECT BY LEVEL <=20 
ORDER BY 1 DESC;