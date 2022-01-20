SELECT 都市名, MAX(最高気温)
  FROM 都市別気象観測
 GROUP BY 都市名
HAVING MAX(最高気温) >= 38