SELECT 費目, SUM(出金額) AS 出金額
  FROM 家計簿アーカイブ
 GROUP BY 費目