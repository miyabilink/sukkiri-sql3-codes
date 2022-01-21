-- 11-01
CREATE INDEX 日付インデックス ON 家計簿(日付);
CREATE INDEX 費目IDインデックス ON 家計簿(費目ID);

-- 11-02
CREATE VIEW 費目名付き家計簿 AS
SELECT * FROM 家計簿
  JOIN 費目
    ON 家計簿.費目ID = 費目.ID;

-- 11-03
CREATE SEQUENCE 費目IDシーケンス;

-- 11-04
INSERT INTO 費目 (ID, 名前)
     VALUES (費目IDシーケンス.NEXTVAL, '接待交際費');
