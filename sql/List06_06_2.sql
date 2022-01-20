SELECT '給料' AS 費目, SUM(出金額) AS 費目別の出金額の合計
  FROM 家計簿
 WHERE 費目 = '給料'   /* ⇒ 「給料」「0」 */