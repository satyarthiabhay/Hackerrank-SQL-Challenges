--Problem https://www.hackerrank.com/challenges/african-cities/problem

SELECT CITY.NAME 
FROM CITY, COUNTRY 
WHERE CITY.COUNTRYCODE = COUNTRY.CODE AND COUNTRY.CONTINENT = 'Africa';