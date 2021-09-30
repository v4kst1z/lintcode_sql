-- 不要删除预置代码 --
-- 开启一个事务 -- 
BEGIN;

-- 插入 Xie Xun 的信息 --
INSERT INTO teachers (name, age, country)
VALUES ('Xie Xun', 49, 'CN');

rollback;
