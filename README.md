# DB 設計

## users table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| name               | string              | null: false               |
| email              | string              | null: false, unique: true |
| encrypted_password | string              | null: false               |
| birth_id           | date                | null: false               |

### Association

has_one :augury
has_one :result

## augury table

| Column             | Type                | Options                   |
|--------------------|---------------------|---------------------------|
| nickname           | string              | null: false               |
| sign               | integer             | null: false               |
| birth_id           | date                | null: false               |

### Association

belongs_to :user
has_one :result

## result table

| Column      | Type       | Options                        |
|-------------|------------|--------------------------------|
| user        | references | null: false, foreign_key: true |
| augury      | references | null: false, foreign_key: true |

### Association

belongs_to :user
belongs_to :augury
