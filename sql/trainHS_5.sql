-- 会員
CREATE TABLE Member (
  MemberNo   CHAR(4)     PRIMARY KEY,
  MemberName VARCHAR(20) NOT NULL,
  Tel        CHAR(11),
  Mail       VARCHAR(40),
  JoinDate   DATE        NOT NULL DEFAULT CURRENT_DATE
);

-- ランク
CREATE TABLE Rank (
  RankCD     CHAR(1)     PRIMARY KEY,
  Title      VARCHAR(40) NOT NULL
);

-- スタイリスト
CREATE TABLE Stylist (
  StylistNo   CHAR(2)     PRIMARY KEY,
  StylistName VARCHAR(20) NOT NULL,
  HireDate    DATE        NOT NULL,
  RankCD      CHAR(1)     REFERENCES Rank(RankCD)
);

-- メニュー
CREATE TABLE Menu (
  MenuCD      CHAR(1)     PRIMARY KEY,
  MenuName    VARCHAR(40) NOT NULL,
  Duration    INTEGER     NOT NULL
);

-- 料金
CREATE TABLE Price (
  MenuCD      CHAR(1) NOT NULL REFERENCES Menu(MenuCD),
  RankCD      CHAR(1) NOT NULL REFERENCES Rank(RankCD),
  MenuPrice   INTEGER NOT NULL,
  PRIMARY KEY(MenuCD, RankCD)
);

-- 予約
CREATE TABLE Reservation (
  ReserveNo   INTEGER   PRIMARY KEY,
  RegistDate  TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  MemberNo    CHAR(4)   NOT NULL REFERENCES Member(MemberNo),
  First       BOOLEAN   NOT NULL DEFAULT '0',
  ReserveDate DATE      NOT NULL,
  StartTime   TIME      NOT NULL,
  ServiceTime INTEGER,
  StylistNo   CHAR(2)   NOT NULL REFERENCES Stylist(StylistNo),
  Amount      INTEGER   NOT NULL DEFAULT 0,
  Remarks     VARCHAR(50)
);

-- 予約明細
CREATE TABLE ReserveDetail (
  ReserveNo INTEGER NOT NULL REFERENCES Reservation(ReserveNo),
  MenuCD   CHAR(1) NOT NULL REFERENCES Menu(MenuCD),
  PRIMARY KEY(ReserveNo, MenuCD)
);
