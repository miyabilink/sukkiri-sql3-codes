SELECT 日付, 名前 AS 費目, メモ, 入金額, 出金額
  FROM 家計簿
  LEFT JOIN 費目
         ON 家計簿.費目ID = 費目.ID