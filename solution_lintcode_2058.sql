delete from courses where teacher_id in (
  select id from teachers where age < 21
);
