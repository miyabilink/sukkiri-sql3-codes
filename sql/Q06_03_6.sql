SELECT 商品区分, 商品名, COUNT(*) FROM 販売履歴
 GROUP BY 商品区分, 商品名
HAVING AVG(価格) >= 10000
