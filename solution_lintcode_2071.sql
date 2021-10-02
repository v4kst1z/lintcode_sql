select * from teachers where country = 'USA' and age = (
  select max(age) from  teachers where country = 'USA' 
);
