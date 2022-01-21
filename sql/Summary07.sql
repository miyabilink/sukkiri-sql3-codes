-- 07-01
UPDATE 家計簿集計
   SET 合計 = (SELECT SUM(出金額)
                 FROM 家計簿アーカイブ
                WHERE 出金額 > 0
                  AND 費目 = '食費')
 WHERE 費目 = '食費';

-- 07-02
SELECT G.タイトル, G.出金額計
  FROM (SELECT '合計01月' AS タイトル, SUM(出金額) AS 出金額計
          FROM 家計簿アーカイブ
         WHERE 日付 >= '2018-01-01'
           AND 日付 <= '2018-01-31'
         UNION
        SELECT '合計12月' AS タイトル, SUM(出金額) AS 出金額計
          FROM 家計簿アーカイブ
         WHERE 日付 >= '2017-12-01'
           AND 日付 <= '2017-12-31') AS G;

-- 07-03
SELECT DISTINCT 費目 FROM 家計簿
 WHERE 費目 NOT IN (SELECT 費目 FROM 家計簿アーカイブ);

-- 07-04
SELECT * FROM 家計簿
 WHERE 費目 = '給料'
   AND 入金額 > ALL (SELECT 入金額 FROM 家計簿アーカイブ
                     WHERE 費目 = '給料');

-- 07-05
INSERT INTO 家計簿アーカイブ
SELECT * FROM 家計簿;
