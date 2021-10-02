select t.name, t.age, t.country from teachers t join (
  select country, max(age) age from teachers group by country
) t1 on t.age = t1.age and t.country = t1.country;
