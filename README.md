# テーブル設計

## users テーブル

| Column             | Type   | Options                    |
| ------------------ | ------ | ---------------------------|
| email              | string | null: false , unique: true |
| encrypted_password | string | null: false                |
| name               | string | null: false                |

### Association

- has_many :photos
- has_many :comments

## photos テーブル

| Column     | Type       | Options                        |
| -----------| ---------- | ------------------------------ |
| number_id  | integer    | null: false                    |
| user       | references | null: false, foreign_key: true |

### Association

- belongs_to :user

## comments テーブル

| Column    | Type       | Options                        |
| ----------| ---------- | ------------------------------ |
| content   | text       | null: false                    |

