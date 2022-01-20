   SELECT s.StylistName AS 名前,
          COALESCE(r.Title, 'アシスタント') AS 肩書
     FROM Stylist s
LEFT JOIN Rank r
       ON s.RankCD = r.RankCD
