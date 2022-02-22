BEGIN;
LOCK TABLE 家計簿 IN EXCLUSIVE MODE; -- 表を明示的にロック
-- 集計処理1
SELECT ～ ;
-- 集計処理2
SELECT ～ ;
-- 集計処理3
SELECT ～ ;
COMMIT;                             -- ロックが解除される
