SELECT DISTINCT 分類, 商品名, サイズ, 単価
  FROM 注文履歴 WHERE 分類 = '1'
UNION
SELECT DISTINCT 分類, 商品名, NULL, 単価
  FROM 注文履歴 WHERE 分類 = '2'
UNION
SELECT DISTINCT 分類, 商品名, NULL, 単価
  FROM 注文履歴 WHERE 分類 = '3'
 ORDER BY 1, 2  -- 具体的な並び順は照合順序の指定により変化します