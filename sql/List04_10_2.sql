-- ROW_NUMBER()の利用
SELECT K.費目, K.出金額
  FROM (
    SELECT *,
           ROW_NUMBER() OVER(ORDER BY 出金額 DESC) RN
      FROM 家計簿
  ) K
 WHERE K.RN >= 1 AND K.RN <= 3
