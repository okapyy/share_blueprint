# Share BluePrint
## 使用技術

Ruby on Rails 5.2.4.2
Haml / Scss
devise
carrierwave

## 概要

本アプリでは皆様でデータを共有していただける場となっています。
会員登録した後に製品登録が可能になっています。
また、登録されているCADデータファイルをダウンロードすることができます。
なお、ダウンロードする際には会員登録をしていただかなければ利用できなくなっています。
登録されている製品のメーカー名、製品名での検索が可能です。

## 本番環境

https://share-blueprint.herokuapp.com/
テストアカウント
メールアドレス : test@gmail.com
パスワード : 000000

## 制作背景
建築業界では今でもなお設計図面は人が手作業で全てを描いています。技術のいる作業ですが、もしその作業の効率化されれば少しでもブラック企業が減るのではないかと思い制作しました。

## DEMO

## 工夫したポイント

少しでも優しい印象を持っていただけるようにホバー時のアクションをゆっくり実行されるように適用しました。
また、本アプリでは重要なデータを取り扱うため、会員登録をしていなければ詳細情報は何も見れないようになっています。

## 課題や今後実装したい機能
お問い合わせ機能
ダウンロードされるファイルを拡張子ごとダウンロードできるようにする
お気に入り機能
メーカーごとの検索機能

## DB設計
### usersテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
#### Association
- has_many :cads

### cadsテーブル
|Column|Type|Options|
|------|----|-------|
|design|text|null: false|
|company|string|null: false|
|product_name|string|null: false|
|detail|text||
|user_id|reference|null: false, foreign_key: true|
|genre_id|reference|null: false, foreign_key: true|
#### Association
- belongs_to :user