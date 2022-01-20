-- ROWNUMの利用（Oracle DB）
SELECT 費目, 出金額
  FROM (
    SELECT K.*, ROWNUM AS RN
      FROM (
        SELECT * FROM 家計簿
         ORDER BY 出金額 DESC
      ) K
  )
 WHERE RN >= 1 AND RN <= 3
