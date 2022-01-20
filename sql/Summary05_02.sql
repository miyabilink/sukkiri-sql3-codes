SELECT 日付, 費目,
       CASE WHEN LENGTH(メモ) >= 8 THEN SUBSTRING(メモ,1,8) || '…'
            ELSE メモ
       END AS メモ, 入金額, 出金額
  FROM 家計簿
