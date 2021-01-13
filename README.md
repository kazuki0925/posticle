# アプリケーション名
PosticleApp

# アプリケーション概要	
手軽に記事やブログなど長い文章を書くことができる。

# 環境
- Ruby (2.6.5)
- rails (6.0.3.4)
- mysql2 (0.5.3)
- devise (4.7.3)
- jquery" (3.5.1)
- S3 (AWS)
- EC2 (AWS)

# URL	
http://18.176.196.64/

# テスト用アカウント
Eメール：taro@gmail.com  
パスワード：123abc  
ニックネーム：taro  

# 機能要件・非機能要件
### ユーザー新規登録 & ログイン機能

### 記事投稿機能
  - 詳細表示機能
  - 編集機能
  - 削除機能
  - お気に入り機能（Ajax）
  - 高評価・低評価機能（Ajax）
  - コメント機能
### ページネーション機能（Ajax）
### ランキング表示
### ユーザーフォロー機能（Ajax）

# 実装した機能についてのGIFと説明
### 記事投稿 & 記事詳細表示
![article_new](https://user-images.githubusercontent.com/74653695/104407002-0877d280-55a4-11eb-93b7-4f29541183e5.gif)

### 記事編集
![article_edit](https://user-images.githubusercontent.com/74653695/104407037-1594c180-55a4-11eb-808e-1281282c491e.gif)

### 記事削除
![article_destroy](https://user-images.githubusercontent.com/74653695/104407091-31986300-55a4-11eb-8aad-b2e71a5b81d6.gif)

### お気に入り登録　＆　高評価・低評価
![favorite_good_bad](https://user-images.githubusercontent.com/74653695/104407112-3fe67f00-55a4-11eb-941b-c34679e91125.gif)

### コメント機能
![comment](https://user-images.githubusercontent.com/74653695/104408315-22ff7b00-55a7-11eb-8f67-f5ee289911a7.gif)

### ページネーション
![pagenation](https://user-images.githubusercontent.com/74653695/104407137-496fe700-55a4-11eb-8d0b-783e0d5ca24a.gif)

### ユーザーフォロー
![follow](https://user-images.githubusercontent.com/74653695/104407150-4ffe5e80-55a4-11eb-995b-988f1a374e02.gif)

### フリーワード検索
![search](https://user-images.githubusercontent.com/74653695/104407182-5f7da780-55a4-11eb-85e2-a87a68f45aaf.gif)

### カテゴリー検索
![cartegory](https://user-images.githubusercontent.com/74653695/104407168-58ef3000-55a4-11eb-8509-b228ae3faede.gif)


# 実装予定の機能
- タグ付け機能

# テーブル設計

![posticle_er](https://user-images.githubusercontent.com/74653695/104409191-0fedaa80-55a9-11eb-8d81-03362e9e318c.png)

## usersテーブル

| Column                | Type    | Options                   |
|-----------------------|---------|---------------------------|
| email                 | string  | null: false, unique: true |
| encrypted_password    | string  | null: false               |
| nickname              | string  | null: false               |

### Association

- has_many :articles
- has_many :comments
- has_many :favorites
- has_many :good_evaluations
- has_many :bad_evaluations


## articlesテーブル

| Column                | Type       | Options           |
|-----------------------|------------|-------------------|
| title                 | string     | null: false       |
| text                  | text       | null: false       |
| user                  | references | foreign_key: true |
| category_id           | integer    | null: false       |

### Association

- belongs_to :user
- has_many :comments
- has_many :favorites
- has_many :good_evaluations
- has_many :bad_evaluations


## commentsテーブル

| Column                | Type       | Options           |
|-----------------------|------------|-------------------|
| text                  | text       | null: false       |
| user                  | references | foreign_key: true |
| article               | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :article


## favoriteテーブル

| Column  | Type       | Options           |
|---------|------------|-------------------|
| user    | references | foreign_key: true |
| article | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :article


## good_evaluationsテーブル

| Column  | Type       | Options           |
|---------|------------|-------------------|
| user    | references | foreign_key: true |
| article | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :article


## bad_evaluationsテーブル

| Column  | Type       | Options           |
|---------|------------|-------------------|
| user    | references | foreign_key: true |
| article | references | foreign_key: true |

### Association

- belongs_to :user
- belongs_to :article


## relationshipsテーブル

| Column  | Type       | Options                       |
|---------|------------|-------------------------------|
| user    | references | foreign_key: true             |
| follow  | references | foreign_key:{to_table: users} |

### Association
- belongs_to :user
