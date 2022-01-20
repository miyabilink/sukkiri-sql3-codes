SELECT 費目, MAX(出金額) AS 最大出金額 FROM 家計簿
 WHERE 出金額 > 0
 GROUP BY 費目
HAVING AVG(出金額) >= 5000