SELECT G.タイトル, G.出金額計
  FROM (SELECT '合計01月' AS タイトル, SUM(出金額) AS 出金額計
          FROM 家計簿アーカイブ
         WHERE 日付 >= '2018-01-01'
           AND 日付 <= '2018-01-31'
         UNION
        SELECT '合計12月' AS タイトル, SUM(出金額) AS 出金額計
          FROM 家計簿アーカイブ
         WHERE 日付 >= '2017-12-01'
           AND 日付 <= '2017-12-31') AS G
