SELECT 費目, 入金額, 出金額, 日付 FROM 家計簿
UNION
SELECT 費目, 入金額, 出金額, 日付 FROM 家計簿アーカイブ
 ORDER BY 2, 3, 4