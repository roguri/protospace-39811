# README

# テーブル設計

## users テーブル

|column             |Type   |Options                |
|------------------ |------ |---------------------- |
|email              |string |null:false,unique:true |
|encrypted_password |string |null:false             |
|name               |string |null:false             |
|profile            |text   |null:false             |
|occupation         |text   |null:false             |
|position           |text   |null:false             |

### Association

- has_many :prototypes
- has_many :comments


## prototypes テーブル

|column     |Type       |Options                      |
|-----------|---------- |---------------------------- |
|title      |string     |null:false,unique:true       |
|catch_copy |text       |null:false                   |
|concept    |text       |null:false                   |
|user       |references |null:false,foreign_key: true |

- belongs_to :user
- has_many :comments

### comments テーブル

|column    |Type       |Options                      |
|--------- |---------- |---------------------------- |
|content   |text       |null:false                   |
|prototype |references |null:false,foreign_key: true |
|user      |references |null:false,foreign_key: true |

- belongs_to :user
- belongs_to :prototype