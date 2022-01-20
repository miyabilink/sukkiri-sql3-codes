SELECT 日付, 費目.名前, 費目.経費区分ID
  FROM 家計簿        -- 家計簿テーブルに対して…
  JOIN ( SELECT * FROM 費目
          WHERE 経費区分ID = 1
       ) AS 費目     -- 副問い合わせの結果を結合
    ON 家計簿.費目ID = 費目.ID
