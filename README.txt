[ディレクトリ構成]
sqlディレクトリ: 書籍掲載のSQL
ddlディレクトリ: 各SQLを実行する前提となるテーブル/データの作成用SQL

[ファイル名の規則]
ListXX〜     : 第XX章 本編掲載SQL
CanXX〜      : 第XX章 「できるようになったこと」掲載SQL
SummaryXX〜  : 第XX章 コラム掲載SQL
QXX〜        : 第XX章 練習問題/解答掲載SQL

（※DDLには先頭にssql3-が付与され、拡張子がありません。）

[前提とするDBMS]
PostgreSQL
（MySQL、Oracleなどの他のDBMSでは一部のSQLが動作しないことがあります。適宜改変してご利用ください。）
