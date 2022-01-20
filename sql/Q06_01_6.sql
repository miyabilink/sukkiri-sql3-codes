SELECT 都市名, MIN(最低気温)
  FROM 都市別気象観測
 GROUP BY 都市名
HAVING MIN(最低気温) <= -10