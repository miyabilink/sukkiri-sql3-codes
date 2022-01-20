SELECT 日付, TRUNC(入金額/110.0, 0) AS 入金ドル,
       TRUNC(出金額/110.0, 0) AS 出金ドル
  FROM 家計簿
