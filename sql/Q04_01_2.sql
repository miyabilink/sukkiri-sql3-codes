SELECT DISTINCT 商品名 FROM 注文履歴
 WHERE 日付 >= '2018-01-01' AND 日付 <= '2018-01-31'
 ORDER BY 商品名 -- 具体的な並び順は照合順序の指定により変化します
