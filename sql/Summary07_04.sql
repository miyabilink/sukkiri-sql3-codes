SELECT * FROM 家計簿
 WHERE 費目 = '給料'
   AND 入金額 > ALL (SELECT 入金額 FROM 家計簿アーカイブ
                     WHERE 費目 = '給料')