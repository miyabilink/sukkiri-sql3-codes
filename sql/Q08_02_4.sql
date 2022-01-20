SELECT 支店ID AS 支店コード, K.名前 AS 支店名,
       S.名前 AS 支店長名, T. 社員数
  FROM 支店 AS K
  JOIN 社員 AS S
    ON K.支店長ID = S.社員番号
  JOIN (SELECT COUNT(*) AS 社員数, 勤務地ID
          FROM 社員 GROUP BY 勤務地ID) AS T
    ON K.支店ID = T.勤務地ID
