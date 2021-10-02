select * from teachers where country in 
(select country from 
(select avg(age) age, country from teachers group by country having  age > (select avg(age) from teachers)) t
);
