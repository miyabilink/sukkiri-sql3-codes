SELECT 日付, 費目.名前, 経費区分.名称
  FROM 家計簿        -- 家計簿テーブルに対して…
  JOIN 費目          -- まず費目テーブルを結合して…
    ON 家計簿.費目ID = 費目.ID
  JOIN 経費区分      -- その結果にさらに経費区分テーブルを結合
    ON 費目.経費区分ID = 経費区分.ID