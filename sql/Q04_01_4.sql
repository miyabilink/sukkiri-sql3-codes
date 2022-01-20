SELECT 日付, 商品名, 単価, 数量, 注文金額 FROM 注文履歴
 WHERE 分類 = '3' AND 数量 >= 2
 ORDER BY 日付, 数量 DESC