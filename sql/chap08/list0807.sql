SELECT 日付, K.メモ, H.メモ
  FROM 家計簿 AS K   -- 家計簿テーブルに別名K を設定
  JOIN 費目 AS H     -- 費目テーブルに別名H を設定
    ON K.費目ID = H.ID
