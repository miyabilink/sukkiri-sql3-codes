SELECT S1.社員番号, S1.名前 AS 名前, S2.名前 AS 上司名
  FROM 社員 AS S1
  LEFT JOIN 社員 AS S2   -- 上司がいない場合もあるため外部結合
         ON S1.上司ID = S2.社員番号
