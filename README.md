# テーブル設計

## users テーブル
| Column          | Type     | Options     |
| --------------- | -------- | ----------- |
| user_id         | string   | null: false |
| mail            | string   | null: false |
| pass            | string   | null: false |
| auth            | string   | null: false |
| name            | string   | null: false |

### Association

- has_many :tags
- has_many :records

## tags テーブル

| Column          | Type     | Options     |
| --------------- | -------- | ----------- |
| tag_id          | string   | null: false |
| name            | string   | null: false |
| description     | longtext | null: false |
| base_time       | integer  | null: false |
| user_id         | integer  | null: false |

### Association

- belongs_to :user
- has_many :records

## records テーブル

| Column          | Type     | Options     |
| --------------- | -------- | ----------- |
| type            | string   | null: false |
| time            | timestamp| null: false |
| tag_id          | integer  | null: false |
| user_id         | integer  | null: false |

### Association

- belongs_to :tag
- belongs_to :user