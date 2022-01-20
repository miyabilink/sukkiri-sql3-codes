SELECT * FROM 家計簿
 UNION
SELECT * FROM 家計簿アーカイブ
 WHERE 日付 >= '2018-02-01'
   AND 日付 <= '2018-02-28'
 ORDER BY 1
