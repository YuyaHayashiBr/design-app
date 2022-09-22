# RememBEER (試作版)

## 概要

ビールのテイスティングノートを記録するアプリです。
記録できる項目としては、以下のの通りです。
* 写真
* テイスティングした際のデータ
* 感想

データについては、ビアジャッジの審査項目を元に作成しております。

テイスティングノート用のみならず、写真だけを記録、ビールを飲んだ感想など自由に記録して頂けます。

なお、このアプリは個人の記録用のため、他のユーザが記録したテイスティングノートは閲覧できません。

## URL

https://remembeer-beta.herokuapp.com/

## テスト用アカウント

| Item     | Content         |
| -------- | --------------- |
| Nickname | Guest           |
| E-mail   | guest@guest.com |
| Password | aaa111          |

## 利用方法

1. ログイン/会員登録する。
2. メニューから「思い出を残す」を選択する。
3. 各項目のデータを入力し、「思い出を残す」ボタンを押下する。
4. 「思い出一覧」画面から記録したテイスティングノートを選択する。
5. 記録したテイスティングノートを閲覧、必要に応じて「Edit」ボタンから内容を修正する。

## アプリケーション作成の背景

ビールを趣味にしており、その中でもラベルを収集することを約８年続けております。
しかし、以下の懸念点が生まれてきました。
* 場所を取る
* 情報がラベルのみのため、味をはっきり思い出せない
* ラベルが重複する

これらを解決するために、以下をコンセプトに本アプリケーションの開発に至りました。
* ラベルを電子化する
* テイスティングした際の感想を記録する
* 記録したテイスティングノートを管理する。


## 要件定義

https://docs.google.com/spreadsheets/d/1ZEAVOCXyXY613gTUO_9wlWCBVICAtAdW5C9Lqyum0DU/edit#gid=982722306

## 実装予定の機能
* 検索機能

## データベース設計

### "users" table
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| email                 | string     | null: false, unique: true      |
| encrypted_password    | string     | null: false                    |
| nickname              | string     | null: false                    |

#### Association
- has_many :notes

### "notes" table
| Column                | Type       | Options                        |
| --------------------- | ---------- | ------------------------------ |
| name                  | string     | null: false                    |
| brewery               | string     |                                |
| beer_style            | string     |                                |
| srm                   | integer    |                                |
| ibu                   | integer    |                                |
| abv                   | integer    |                                |
| looks_clear_id        | integer    |                                |
| looks_color_id        | integer    |                                |
| looks_foam_id         | integer    |                                |
| aroma_malt_id         | integer    |                                |
| aroma_hop_id          | integer    |                                |
| aroma_ester_id        | integer    |                                |
| aroma_fruit_id        | integer    |                                |
| aroma_other_id        | integer    |                                |
| flavor_body_id        | integer    |                                |
| flavor_carbonation_id | integer    |                                |
| flavor_malt_id        | integer    |                                |
| flavor_hop_id         | integer    |                                |
| flavor_other_id       | integer    |                                |
| memo                  | text       |                                |
| user                  | references | null: false, foreign_key: true |

#### Association
- belongs_to :user

## 開発環境

### フロントエンド
* HTML
* CSS
* JavaScript

### サーバサイド
* Ruby on Rails

### データベース
* MySQL

## 備考
思いつきで計画性なく実装しているため、不要なコードが多い状況です。
ある程度の機能実装が完了出来次第、正式版として改めてリリースしたいと考えております。