SELECT 注文番号, 注文枝番, 注文金額 FROM 注文履歴
 WHERE 分類 = '1' ORDER BY 注文金額
OFFSET 1 ROWS FETCH NEXT 3 ROWS ONLY
