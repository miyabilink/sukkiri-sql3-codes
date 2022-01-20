SELECT 受注日, 受注ID, 文字数,
       CASE COALESCE(書体コード, '1')
           WHEN '1' THEN 'ブロック体'
           WHEN '2' THEN '筆記体'
           WHEN '3' THEN '草書体' END AS 書体名,
       CASE COALESCE(書体コード, '1')
           WHEN '1' THEN 100
           WHEN '2' THEN 150
           WHEN '3' THEN 200  END AS 単価,
       CASE WHEN 文字数 > 10 THEN 500
       ELSE 0 END AS 特別加工料
  FROM 受注
 ORDER BY 受注日, 受注ID
