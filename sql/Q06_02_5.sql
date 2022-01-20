SELECT 日付, COUNT(社員名) AS 対応社員数
  FROM 入退室管理
 WHERE 事由区分 = '3'
 GROUP BY 日付