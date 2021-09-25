--- 存储过程 OUT 参数（二）---

create procedure GetCoursesByTeacher(
  in Teacher int,
  out total int
)
begin
  select count(name) into total from courses where teacher_id = Teacher;
end;

call GetCoursesByTeacher(3, @total);
select @total;

