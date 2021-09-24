--- 存储过程 INOUT 参数（二）---

create procedure UpdateStudentCount( inout count int, in des int)
begin
  update courses set student_count=(student_count - des)  where name='Django';
  set count = (select student_count from courses where name='Django');
end
