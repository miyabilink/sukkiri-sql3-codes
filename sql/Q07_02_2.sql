SELECT 車種コード, 車種名
  FROM 料金
 WHERE 車種コード IN (SELECT 車種コード FROM レンタル
                     WHERE レンタル日数 > 1)
 ORDER BY 車種コード