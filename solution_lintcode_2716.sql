CREATE ALGORITHM=TEMPTABLE VIEW v_teachers 
 AS
 SELECT * FROM teachers WHERE country ='CN';
