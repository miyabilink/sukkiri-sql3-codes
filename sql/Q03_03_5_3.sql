UPDATE 成績表 SET 総合成績 = 'D'
 WHERE 法学 < 50 AND 経済学 < 50 AND 哲学 < 50
   AND 情報理論 < 50 AND 外国語 < 50
   AND 総合成績 IS NULL