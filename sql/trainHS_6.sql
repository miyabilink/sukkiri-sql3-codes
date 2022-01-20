-- Member
INSERT INTO Member VALUES ('0001', '吉田康子', '0901112215', 'yoshida@a1.com', '2000-04-10');
INSERT INTO Member VALUES ('0002', '荒木和子', '0901112216', 'araki@a2.com', '2012-08-11');
INSERT INTO Member VALUES ('0003', '下田正一', '0901112217', 'shimoda@a3.com', '2013-04-12');
INSERT INTO Member VALUES ('0004', '風間由美子', '0901112218', NULL, '2013-06-13');
INSERT INTO Member VALUES ('0005', '秋山美奈', '0901112219', 'akiyama@a5.com', '2015-01-14');
INSERT INTO Member VALUES ('0006', '木下博之', '0901112220', 'kinoshita@a6.com', '2015-04-15');
INSERT INTO Member VALUES ('0007', '広瀬正隆', NULL, NULL, '2016-09-16');
INSERT INTO Member VALUES ('0008', '斉藤美紀', '0901112222', 'saitou@a8.com', '2018-04-17');

-- Rank
INSERT INTO Rank VALUES ('A', 'チーフスタイリスト');
INSERT INTO Rank VALUES ('B', 'トップスタイリスト');
INSERT INTO Rank VALUES ('C', 'スタイリスト');

-- Stylist
INSERT INTO Stylist VALUES ('01', '秋葉ちか', '1998-04-01', 'A');
INSERT INTO Stylist VALUES ('02', '佐藤茜', '2000-06-01', 'B');
INSERT INTO Stylist VALUES ('03', '井上博之', '2003-01-08', 'B');
INSERT INTO Stylist VALUES ('04', '小島正', '2010-05-02', 'C');
INSERT INTO Stylist VALUES ('05', '山田雄介', '2015-04-01', 'C');
INSERT INTO Stylist VALUES ('06', '市川紀子', '2018-06-10', NULL);

-- Menu
INSERT INTO Menu VALUES ('C', 'カット', 30);
INSERT INTO Menu VALUES ('P', 'カラー', 60);
INSERT INTO Menu VALUES ('R', 'パーマ', 60);
INSERT INTO Menu VALUES ('T', 'トリートメント', 30);

-- Price
INSERT INTO Price VALUES ('C', 'A', 12000);
INSERT INTO Price VALUES ('C', 'B', 10000);
INSERT INTO Price VALUES ('C', 'C', 8000);
INSERT INTO Price VALUES ('P', 'A', 18000);
INSERT INTO Price VALUES ('P', 'B', 15000);
INSERT INTO Price VALUES ('P', 'C', 12000);
INSERT INTO Price VALUES ('R', 'A', 9600);
INSERT INTO Price VALUES ('R', 'B', 8000);
INSERT INTO Price VALUES ('R', 'C', 6400);
INSERT INTO Price VALUES ('T', 'A', 14400);
INSERT INTO Price VALUES ('T', 'B', 12000);
INSERT INTO Price VALUES ('T', 'C', 9600);

-- Reservation
INSERT INTO Reservation VALUES (1, '2018-09-06 16:28', '0002', '0', '2018-10-01', '17:00', 90, '01', 21600, NULL);
INSERT INTO Reservation VALUES (2, '2018-09-26 12:42', '0004', '1', '2018-10-01', '10:00', 30, '03', 10000, NULL);
INSERT INTO Reservation VALUES (3, '2018-09-30 10:30', '0008', '0', '2018-10-01', '15:00', 150, '05', 26400, NULL);

-- ReserveDetail
INSERT INTO ReserveDetail VALUES (1, 'C');
INSERT INTO ReserveDetail VALUES (1, 'R');
INSERT INTO ReserveDetail VALUES (2, 'C');
INSERT INTO ReserveDetail VALUES (3, 'C');
INSERT INTO ReserveDetail VALUES (3, 'P');
INSERT INTO ReserveDetail VALUES (3, 'R');
