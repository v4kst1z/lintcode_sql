CREATE ALGORITHM=Merge VIEW v_teachers 
 AS
 SELECT * FROM teachers WHERE age > 23;
