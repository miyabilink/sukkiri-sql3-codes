SELECT 価格 * (SELECT SUM(レンタル日数)
                FROM レンタル
               WHERE 車種コード = 'E01') AS 金額
  FROM 料金
 WHERE 車種コード = 'E01'