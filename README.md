# テーブル設計

## users テーブル

| Column             | Type   | Options                    |
| ------------------ | ------ | ---------------------------|
| email              | string | null: false , unique: true |
| encrypted_password | string | null: false                |
| name               | string | null: false                |

### Association



## pages テーブル

| Column     | Type       | Options                        |
| -----------| ---------- | ------------------------------ |
| name       | string     | null: false                    |
| number     | integer    | null: false                    |


### Association

- has_many :photos

## photos テーブル

| Column      | Type       | Options                        |
| ----------- | ---------- | ------------------------------ |
| photonumber | integer    | null: false                    |
| page        | references | null: false, foreign_key: true |

### Association

- belongs_to :album