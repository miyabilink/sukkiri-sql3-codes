SELECT SUM(降水量), AVG(最高気温), AVG(最低気温)
  FROM 都市別気象観測
 WHERE 都市名 = '東京'