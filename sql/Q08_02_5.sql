SELECT S1.社員番号 AS 社員番号, S1.名前 AS 名前,
       K1.名前 AS 本人勤務地, K2.名前 AS 上司勤務地
  FROM 社員 AS S1
  JOIN 社員 AS S2
    ON S1.上司ID = S2.社員番号
   AND S1.勤務地ID <> S2.勤務地ID
  JOIN 支店 AS K1
    ON S1.勤務地ID = K1.支店ID
  JOIN 支店 AS K2
    ON S2.勤務地ID = K2.支店ID
