SELECT '食費' AS 費目, SUM(出金額) AS 費目別の出金額の合計
  FROM 家計簿
 WHERE 費目 = '食費'   /* ⇒ 「食費」「380」 */