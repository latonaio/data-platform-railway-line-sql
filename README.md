# data-platform-railway-line-sql 

data-platform-railway-line-sql は、データ連携基盤において、鉄道路線データを維持管理するSQLテーブルを作成するためのレポジトリです。  

## 前提条件  
data-platform-railway-line-sql は、データ連携にあたり、API を利用し、本レポジトリ の sql 設定ファイルの内容は、下記 URL の API 仕様を前提としています。  
https://api.XXXXXXXX.com/api/OP_API_XXXXXXX_XXX/overview   

## sqlの設定ファイル

data-platform-railway-line-sql には、sqlの設定ファイルとして、以下のファイルが含まれています。    

* data-platform-railway-line-sql-header-data.sql（データ連携基盤 鉄道路線 - ヘッダデータ）
* data-platform-railway-line-sql-stop-station-data.sql（データ連携基盤 鉄道路線 - 停車駅データ）
* data-platform-railway-line-sql-express-type-data.sql（データ連携基盤 鉄道路線 - エクスプレスタイプデータ）
* data-platform-railway-line-sql-express-stop-station-data.sql（データ連携基盤 鉄道路線 - エクスプレス停車駅データ）
* data-platform-railway-line-sql-departure-station-data.sql（データ連携基盤 鉄道路線 - 始点駅データ）
* data-platform-railway-line-sql-destination-station-data.sql（データ連携基盤 鉄道路線 - 終着駅データ）
* data-platform-railway-line-sql-dpt-dst-station-data.sql（データ連携基盤 鉄道路線 - 始点終着駅データ）
* data-platform-railway-line-sql-header-doc-data.sql（データ連携基盤 鉄道路線 - ヘッダ文書データ）
* data-platform-railway-line-sql-partner-data.sql（データ連携基盤 鉄道路線 - パートナデータ）

## MySQLのセットアップ / Kubernetesの設定 / SQLテーブルの作成方法
MySQLのセットアップ / Kubernetesの設定 / 具体的なSQLテーブルの作成方法、については、[mysql-kube](https://github.com/latonaio/mysql-kube)を参照ください。  
