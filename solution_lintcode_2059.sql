delete from teachers where id in (
  select teacher_id from  courses where created_at < '2020-01-01'
);
