-- 不要删除预置代码 --
-- 开启一个事务 -- 
BEGIN;

-- 更新 Linghu Chong 的年龄 --
UPDATE teachers
SET age = 26
WHERE name = 'Linghu Chong';

rollback;
