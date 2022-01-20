SELECT 日付, COALESCE(メモ, 費目, '不明') AS 備考
  FROM 家計簿