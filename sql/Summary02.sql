-- 02-01
SELECT * FROM 家計簿;
-- 02-02
SELECT 日付 FROM 家計簿 WHERE 出金額 > 2000;
-- 02-03
INSERT INTO 家計簿
     VALUES ('2018-03-01', '娯楽費', '映画をみた', 0, 1800);
-- 02-04
UPDATE 家計簿 SET 出金額 = 1500 WHERE 日付= '2018-03-01';
-- 02-05
DELETE FROM 家計簿;
