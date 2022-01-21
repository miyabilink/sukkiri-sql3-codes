-- 03-01
SELECT * FROM 家計簿
 WHERE 日付 = '2018-03-01' AND 費目 = '食費';

-- 03-02
SELECT * FROM 家計簿
 WHERE 出金額 IS NULL;

-- 03-03
SELECT * FROM 家計簿
 WHERE メモ LIKE '%購入%' AND 出金額 > 0;
 
-- 03-04
SELECT * FROM 家計簿
 WHERE 費目 IN ('家賃','電気代','水道代');

-- 03-05
SELECT * FROM 家計簿
 WHERE 日付 BETWEEN '2018-03-01' AND '2018-03-31';
