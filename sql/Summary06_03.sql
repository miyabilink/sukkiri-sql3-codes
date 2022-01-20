SELECT MAX(出金額) AS 最高額, MIN(出金額) AS 最低額
  FROM 家計簿アーカイブ WHERE 費目 = '水道光熱費'