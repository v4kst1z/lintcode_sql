select country, count(country) teacher_count from 
teachers group by country order by teacher_count, country;
