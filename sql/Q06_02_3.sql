SELECT CASE 事由区分 WHEN '1' THEN 'メンテナンス'
                    WHEN '2' THEN 'リリース作業'
                    WHEN '3' THEN '障害対応'
                    WHEN '9' THEN 'その他'
       END AS 事由,
       COUNT(*) AS 入室回数
  FROM 入退室管理
 GROUP BY 事由区分
