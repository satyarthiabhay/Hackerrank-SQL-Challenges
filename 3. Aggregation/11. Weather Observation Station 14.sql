--Problem: https://www.hackerrank.com/challenges/weather-observation-station-14/problem

SELECT ROUND(MAX(LAT_N), 4) 
FROM Station 
WHERE LAT_N < 137.2345;
