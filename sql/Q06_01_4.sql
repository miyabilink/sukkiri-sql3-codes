SELECT 月, AVG(降水量), AVG(最高気温), AVG(最低気温)
  FROM 都市別気象観測
 GROUP BY 月