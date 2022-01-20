CREATE VIEW 学部名付き学生 AS
SELECT S.学籍番号, S.名前, S.生年月日, S.血液型,
       S.学部ID, B.名前 AS 学部名
  FROM 学生 AS S
  JOIN 学部 AS B
    ON S.学部ID = B.ID
