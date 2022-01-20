SELECT 社員名, COUNT(*) AS 入室回数
  FROM 入退室管理
 GROUP BY 社員名
 ORDER BY 2 DESC