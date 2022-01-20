SELECT SUM(SUB.日数) AS 合計日数,
       COUNT(SUB.車種コード) AS 車種数
  FROM (SELECT 車種コード, SUM(レンタル日数) AS 日数
          FROM レンタル
         GROUP BY 車種コード) AS SUB
