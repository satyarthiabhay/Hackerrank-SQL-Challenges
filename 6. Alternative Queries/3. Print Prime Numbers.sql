-- Problem : https://www.hackerrank.com/challenges/print-prime-numbers/problem

SELECT LISTAGG(L1,'&') WITHIN GROUP (ORDER BY L1) 
FROM (Select L1 
      FROM (SELECT LEVEL L1 FROM DUAL CONNECT BY LEVEL<=1000) 
      WHERE L1 <> 1
      --
      MINUS
      --
      SELECT L1 
      FROM (SELECT LEVEL L1 FROM DUAL CONNECT BY LEVEL<=1000) A ,
            (SELECT LEVEL L2 FROM DUAL CONNECT BY LEVEL<=1000) B 
      WHERE L2<=L1 AND MOD(L1,L2)=0 AND L1<>L2 AND L2<>1);