# README
![トップページ](https://github.com/t-yoshida0721/indoor-28855/blob/master/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202020-09-24%2018.05.00.png)    


# **アプリケーション名**
- ## *"indoor"* 

# **概要**

- ### 自宅での過ごし方＝『indoor』を投稿できる掲示板です。  
  ### 画像付きでindoorを投稿してそれに対してユーザー同士がコメントでのコミュニケーションが可能です。
  
  
# **制作意図**  
- ### 自宅で過ごす事により、孤独を感じることが多くなった現代で  
  ### 『室内での過ごし方』を共有することによって安心に変わる事を意図としています。

# **環境**
### [こちらからご覧頂けます](https://indoor-28855.herokuapp.com/) （デプロイ先：Heroku）  
* #### Basic認証　　　  
       *　ユーザー名：tatsuhiko　
       * パスワード：0721
* #### テストアカウント　　
       * メールアドレス：aaa＠aaa　
       * パスワード　　：ty0721

 # **Demo**
![Demo](https://github.com/t-yoshida0721/indoor-28855/blob/master/%E3%82%B9%E3%82%AF%E3%83%AA%E3%83%BC%E3%83%B3%E3%82%B7%E3%83%A7%E3%83%83%E3%83%88%202020-09-25%2012.13.17.png)  
- ## Action Cableを使用し、リロードなしでコメントのやり取りができます。

![Demo動画](https://github.com/t-yoshida0721/indoor-28855/blob/master/%E7%94%BB%E9%9D%A2%E5%8F%8E%E9%8C%B2%202020-09-25%2013.53.08%E3%81%AE%E3%82%B3%E3%83%92%E3%82%9A%E3%83%BC2.gif)

# **今後の実装方針**
- ### さらなるコミュニケーションの活性化のため、いいね機能の実装を考えています. 

# **開発環境**
- ### Ruby/Ruby on Rails/JavaScript/MySQL/Github/AWS/Visual Studio Code

# テーブル設計

## users テーブル

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :indoors
- has_many :messages

## indoors テーブル

| Column      | Type       | Options                        |
| ------------|------------| -------------------------------|
| image       | string     | null: false                    |
| indoor_name | string     | null: false                    |
| indoor_text | string     | null: false                    |
| user        | references | null: false, foreign_key: true |

### Association

- belongs_to :user
- has_many :messages

# messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| text    | string     |                                |
| user    | references | null: false, foreign_key: true |
| indoor  | references | null: false, foreign_key: true |

### Association

- belongs_to :indoor
- belongs_to :user
