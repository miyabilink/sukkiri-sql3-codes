SELECT 受験者ID AS 合格者ID
  FROM 試験結果
 WHERE 午前 >= 60
   AND 午後1 + 午後2 >= 120
   AND 0.3 * ( 午前 + 午後1 + 午後2 + 論述) <= 論述