-- 06-01
SELECT SUM(入金額), SUM(出金額) FROM 家計簿;

-- 06-02
SELECT COUNT(費目) AS 食費を支払った回数 FROM 家計簿
 WHERE 費目 = '食費';

-- 06-03
SELECT MAX(出金額) AS 最高額, MIN(出金額) AS 最低額
  FROM 家計簿アーカイブ WHERE 費目 = '水道光熱費';

-- 06-04
SELECT AVG(入金額) AS 平均額 FROM 家計簿アーカイブ
 WHERE 費目 = '給料';

-- 06-05
SELECT 費目, SUM(出金額) AS 出金額
  FROM 家計簿アーカイブ
 GROUP BY 費目;

-- 06-06
SELECT 費目, MAX(出金額) AS 最大出金額 FROM 家計簿
 WHERE 出金額 > 0
 GROUP BY 費目
HAVING AVG(出金額) >= 5000;
