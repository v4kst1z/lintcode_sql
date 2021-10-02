update courses set name = 'PHP', student_count = 300 where teacher_id in (
select id from teachers where name = 'Eastern Heretic'
);
