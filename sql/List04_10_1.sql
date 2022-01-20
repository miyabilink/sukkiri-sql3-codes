-- LIMITの利用
--（MySQL、PostgreSQL、SQLite）
SELECT 費目, 出金額
  FROM 家計簿
 ORDER BY 出金額 DESC LIMIT 3
