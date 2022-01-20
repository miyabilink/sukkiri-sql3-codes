UPDATE 成績表 SET 総合成績 = 'B'
 WHERE ( 法学 >= 80 OR 外国語 >= 80)
   AND ( 経済学 >= 80 OR 哲学 >= 80)
   AND 総合成績 IS NULL