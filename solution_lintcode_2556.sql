-- 不要删除预置代码 --
-- 开启一个事务 -- 
BEGIN;

-- 更新 Linghu Chong 的年龄 --
-- Write your SQL Query here --
update teachers set age = 26 where name = 'Linghu Chong';

COMMIT;
