-- 05-01
SELECT 日付, 費目, メモ, 入金額, 出金額,
       入金額 - 出金額 AS 入出金差額
  FROM 家計簿;

-- 05-02
SELECT 日付, 費目,
       CASE WHEN LENGTH(メモ) >= 8 THEN SUBSTRING(メモ,1,8) || '…'
            ELSE メモ
       END AS メモ, 入金額, 出金額
  FROM 家計簿;

-- 05-03
SELECT 日付, TRUNC(入金額/110.0, 0) AS 入金ドル,
       TRUNC(出金額/110.0, 0) AS 出金ドル
  FROM 家計簿;

-- 05-04
SELECT * FROM 家計簿
 WHERE 日付 > CURRENT_DATE;

-- 05-05
SELECT 日付, COALESCE(メモ, 費目, '不明') AS 備考
  FROM 家計簿;
