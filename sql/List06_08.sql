SELECT 費目, SUM(出金額) AS 費目別の出金額計
  FROM 家計簿
 WHERE SUM(出金額) > 0  --出金額の合計が0 より大きい行だけを
 GROUP BY 費目          --表示したい