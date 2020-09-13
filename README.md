# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

## indoors テーブル

| Column      | Type       | Options                        |
| ------------|------------| -------------------------------|
| image       | string     | null: false                    |
| indoor_name | string     | null: false                    |
| indoor_text | string     | null: false                    |
| user        | references | null: false, foreign_key: true |

# messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | string     |                                |
| user    | references | null: false, foreign_key: true |
| indoor  | references | null: false, foreign_key: true |