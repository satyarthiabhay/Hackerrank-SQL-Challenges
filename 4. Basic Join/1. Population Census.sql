--Problem: https://www.hackerrank.com/challenges/asian-population/problem

SELECT SUM(X.POPULATION) 
FROM CITY X, COUNTRY Y 
WHERE X.COUNTRYCODE = Y.CODE AND Y.CONTINENT = 'Asia';
