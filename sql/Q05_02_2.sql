SELECT TRIM(メールアドレス) AS メールアドレス,
       CASE WHEN 年齢 >= 20 AND 年齢 < 30 THEN '20代'
            WHEN 年齢 >= 30 AND 年齢 < 40 THEN '30代'
            WHEN 年齢 >= 40 AND 年齢 < 50 THEN '40代'
            WHEN 年齢 >= 50 AND 年齢 < 60 THEN '50代' END
       || '：' ||
       CASE 性別 WHEN 'M' THEN '男性'
                WHEN 'F' THEN '女性' END AS 属性
  FROM 回答者
