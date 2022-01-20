SELECT 都市名, AVG(降水量), MIN(最高気温), MAX(最低気温)
  FROM 都市別気象観測
 GROUP BY 都市名