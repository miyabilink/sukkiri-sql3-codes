SELECT 飼育県 AS 都道府県名, 個体識別番号,
       CASE 雌雄コード WHEN '1' THEN '雄'
                    WHEN '2' THEN '雌' END AS 雌雄
  FROM 個体識別
 WHERE 飼育県 IN (SELECT 飼育県 FROM 頭数集計
                  ORDER BY 頭数 DESC
                 OFFSET 0 ROWS FETCH NEXT 3 ROWS ONLY)
