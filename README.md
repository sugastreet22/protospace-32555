# アプリケーション名

TOPRO

TOPROは東京とプログラミングを組み合わせた造語です。

# アプリケーション概要

TOPROでは東京で集中して学習できる場所を共有するアプリです。プログラミングを学習する際に必須な電源、Wi-Fiがある場所を効率的に探すことができます。

# URL

https://protospace-32555.herokuapp.com/

# テスト用アカウント

投稿者：山田太郎
メールアドレス:aaaa@gmail.com
パスワード:111aaa

投稿者：鈴木花子
メールアドレス:bbbb@gmail.com
パスワード:111aaa


# 利用方法

新規登録をしてもらい、メールアドレス、パスワード、ユーザー名、プロフィールを入力してもらいます。そのあと右上にある投稿するのボタンを押していただき、プログラミングが集中して勉強ができる場所の名称、おすすめポイント、電源があるか、Wi-Fiがあるか、アクセスを入力して、画像を選択して投稿するのボタンを押していただきます。投稿するとトップページには場所の画像とおすすめポイントが表示されます。画像をクリックすると学習できる場所の詳細を見ることができます。ログインのユーザーは削除と編集もできるのでおすすめポイントなどを修正したいときは変えることができます。コメント機能もあるので他のユーザーとその場所について共有することができます。

# 目指した課題解決

プログラミングを家で集中して勉強できない人に、外で集中して学習ができる環境を共有できます。

# 洗い出した要件

| 機能 | 目的 | 詳細 | ストーリー（ユースケース） |
|  ---  |  ---  |  ---  |  ---  |
| 投稿機能 | 共有したい場所を投稿する | 電源やWi-Fiなどプログラミングする際に必須の条件を記入する | 投稿する場所は必ず全て埋めることが条件 |
| 編集削除機能 | 新たにおすすめポイントが見つかった際に更新が可能 | 自分が投稿した場所の編集と削除ができる | マイページに遷移すると編集と削除ボタンがあること<br>他のユーザーが詳細ページにいくと削除と編集ボタンがないこと |
| コメント機能 | 他のユーザーと共有することが可能 | 他のユーザーの投稿にコメントができる | 誰が投稿したかわかるように後ろにユーザー名を表示する |

# 実装した機能についてのGIFと説明

投稿機能
https://gyazo.com/5c1ea020ce840cb5f7c89197be48729f

編集機能
https://gyazo.com/b055ec2fcc83ac4f4e7e16a60e793c22

削除機能
https://gyazo.com/2cfd61453e89e7e7f62faecb51a7512c

コメント機能
https://gyazo.com/8e5873eed7ecda421ab9c654b28d9db0
https://i.gyazo.com/8e5873eed7ecda421ab9c654b28d9db0.gif

# 工夫したポイント
最初の画面でおすすめポイントが見ることができるので、気になるところをトップページを見るだけで判断できます。

# 使用技術（開発環境）

## バックエンド
Ruby, Ruby on Rails

## フロントエンド
HTML　CSS

## データベース
MySQL SequelPro

## 本番環境
heroku S3

## ソース管理
GitHub, GitHubDesktop

## エディタ
VSCode

# 課題や今後実装したい課題

グーグルマップなどで場所の取得。検索機能の追加

# データベース設計	TOPROのER図

## users テーブル
| Column       | Type          | Options           |
| --------     | ------        | -----------       |
| email        | string        | null: false       |
| password     | string        | null: false       |
| name         | string        | null: false       |
| profile      | text          | null: false       |


## prototypes テーブル
| Column       | Type          | Options           |
| --------     | ------        | -----------       |
| title        | string        | null: false       |
| catch_copy   | text          | null: false       |
| consent      | text          | null: false       |
| net          | text          | null: false       |
| access       | text          | null: false       |
| image        | ActiveStorage | null: false       |
| user         | references    | foreign_key: true |

## comments テーブル
| Column       | Type          | Options            |
| --------     | ------        | -----------        |
| text         | text          | null: false        |
| user         | reference     | foreign_key: true  |
| prototype    | references    | foreign_key: true  |

# ローカルでの動作方法

```bash
railsのバージョン6.0
git clone https://github.com/sugastreet22/protospace-32555.git
cd protospace-32555
```







