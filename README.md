# Share BluePrint
## 使用技術

Ruby on Rails 5.2.4.2
devise
ancestry

# 概要


# 本番環境

# 制作背景
建築業界では今でもなお設計図面は人が手作業で全てを描いています。技術のいる作業ですが、もしその作業の効率化されれば少しでもブラック企業が減るのではないかと思い制作しました。

# DEMO

# 工夫したポイント

# 課題や今後実装したい機能

# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
### Association
- has_many :cads

## cadsテーブル
|Column|Type|Options|
|------|----|-------|
|design|text|null: false|
|company|string|null: false|
|product_name|string|null: false|
|detail|text||
|user_id|reference|null: false, foreign_key: true|
|genre_id|reference|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :genre

## genresテーブル
|Column|Type|Options|
|------|----|-------|
|name|string||
|ancestry|string||
### Association
- has_many :cads
- has_ancestry