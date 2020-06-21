
## 開発担当箇所
チーム開発にて私が担当した実装を記載させて頂きます。
### 担当箇所一覧
#### DB設計
#### フロント
  ○トップページ
  ○商品詳細ページ
  ○商品出品ページ
#### サーバーサイド
  ○商品出品
  ○商品編集
  ○カテゴリー機能
  ○商品検索機能
  ○商品詳細検索機能
  ○お気に入り機能
  ○パンくず機能
  ○メッセージの非同期通信と自動更新機能

### 各担当箇所の詳細
#### DB設計
○概要
  ・必要なモデルとそのカラムと型の洗い出し。
  ・モデル間のアソシエーションの記述
○担当内容
  ・ER図の作成

#### トップページ
○概要
  ・参考サイトとほぼ同じ見た目のビューが実装
○担当内容
・フッター以外のビューをHaml、Sassにて実装
  ・ヘッダー上部のカテゴリーをホバーするとカテゴリー一覧が出てくるように実装

#### カテゴリー機能の実装
○概要
  ・カテゴリーを登録、表示できる機能を実装
○担当内容(フロントエンド)
  ・商品詳細画面にカテゴリーが表示できるようにしました。
○担当内容(バックエンド)
  ・ancestryを用いてseed.rbにカテゴリーの初期データを作成しました。

#### 商品出品
○概要
  ・商品出品を出品する為の機能を実装
○担当内容(フロントエンド)
  ・画像を一枚追加したら、新しく画像追加用のボタンが出てくる。追加した画像はプレビューとして画面に表示されるようにしています。
  ・カテゴリー選択に関して、親カテゴリーが選択されたら該当の子カテゴリーが選択できるようになり、子カテゴリーが選択されたら孫カテゴリーを選択できるようにしています。
○担当内容(バックエンド)
  ・active_hashを用いて発送元の地域のモデルを作成しました。
  ・必須項目にバリデーションをかけて、入力されていない状態で出品した場合はエラーハンドリングが出るようにしています。

#### 商品編集
○概要
  ・出品した商品を編集する機能を実装
○担当内容(フロントエンド)
  ・商品出品時と同じビューが表示される。またカテゴリーは孫カテゴリーまで表示される。
○担当内容(バックエンド)
  ・編集した商品が登録できるように実装しました。商品出品と同じくエラーハンドリングができるように実装。

#### 商品検索機能
○概要
  ・ヘッダーの検索フォームにて検索すると検索画面に遷移し、検索結果が出てくる。
○担当内容(フロント)
  ・検索結果があった場合に検索結果が表示される。検索結果が無い場合は「検索結果がありません」と表示される。
○担当内容(バックエンド)
  ・検索キーワードをDBからひっぱり、インスタンス変数に代入できるように実装しました。

#### 商品詳細検索
○概要
  ・商品検索画面の左側で詳細な商品の検索ができる機能を実装。
○担当内容(フロントエンド)
  ・商品検索画面の検索フォームを実装しました。項目毎にテキストエリアかチェックボックスに分けました。
○担当内容(バックエンド)
  ・ransackを用いて、商品を詳細検索できるように実装しました。

#### お気に入り機能
○概要
  ・商品詳細ページにてお気に入りボタンを押せば、お気に入り登録される機能を実装
○担当内容(フロントエンド)
  ・商品詳細ページにお気に入りボタンが配置し、お気に入りに登録していない場合と登録している場合で表示を変える。
  ・マイページのお気に入り一覧からお気に入りした商品を閲覧することができる。
  ・トップページに商品のお気に入りされた数を表示。
○担当内容(バックエンド)
  ・商品をお気に入りに登録することができるように実装。
  ・お気に入りを登録するボタンは非同期通信を用いて変更し、ページ遷移が起きないように実装。

#### パンくず機能
○概要
  ・ヘッダー部分に現在表示されている画面が視覚的にわかるようにする。
○担当内容(フロントエンド)
  ・各ページのフッターに該当するパンくずを表示。またクリックすると該当ページに遷移できる。
○担当内容(バックエンド)
  ・gretelを使用して、パンくず機能が使えるように実装しました。

#### メッセージ送信機能
○概要
  ・メッセージを送信できるように実装。
○担当内容(バックエンド)
  ・メッセージの送信後、非同期通信を行い、ページ遷移しないで表示されるように実装。
  ・自動更新機能を実装し、他社がメッセージを送信した時に、自動的に表示されるように実装。



#### 開発を通じて得られた知見
工夫した点
①チームとして工夫を行った点
  ・実装を行う前にタスクを細かく分けて、作業する順番を決めていきました。なぜなら機能毎に分担すると他の人の作業待ちが出てきてしまうからです。作業する順番を決めた結果、早めに基本実装を終わらせることができ、追加実装まで実装することができました。
  ・教室で集まって開発できない状況のなか、slackにて細かく連絡を取り合うことで、エラー解決をスムーズに行うことができました。質問の仕方もエラー文ややりたいこと、コードを載せることで他人にも分かりやすくすることで、他の人が対応しやすくなりました。
②個人として工夫を行った点
  ・自分の担当分野では無いユーザー登録のウィザード機能などの勉強をしました。担当者がエラーでつまったり、後々関わりが出てくる場合があると考えたからです。担当者がエラーで詰まらずスムーズに実装ができても、自分の知識と経験として上乗せできると思ったからです。
  ・メッセージの自動更新機能を作成しました。フリーマーケットアプリはメッセージアプリと違い、自動更新機能は必須で無いと思いますが、ある方がユーザーライクだと思い実装しました。
苦労した点
①チームとして苦労した点
  ・git hubの使い方に苦労しました。個人アプリ作成の際にもgit hubを使っておりましたが、チーム開発でのgit hubとは使い方が異なり、エラーの連続でした。Qiitaで調べたり、チームメンバーのエラーを一緒に確認して、作業を進めることで、git hubの使い方に慣れてきました。
②個人として苦労した点
  ・商品出品画面や商品編集画面でのカテゴリー選択の実装が苦労しました。ajaxとancestryを結び付けながら、親カテゴリーを選択したら子カテゴリーを選択する為のセレクトボックスが出てくるように実装することが大変でした。ですが、自分の弱点がajaxだと気づくことができたと思います。ですのでお気に入り機能やコメントの自動通信に取り組み、ajaxの知識を深めました。


## freemarket_sample_75d DB設計図

### userテーブル
|Column|Type|Option|
|------|----|------|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|
|nickname|string|null: false|
|email|text|null: false|
|password|text|null: false|
|birthday|date|null: false|
- has_many :products, dependent: :destroy
- has_one :credit_cards, dependent: :destroy
- has_one :address, dependent: :destroy
- has_many :favorites, dependent: :destroy
- has_many :favorites, through: :favorites, source: :product
- has_many :messages

### addressテーブル
|Column|Type|Option|
|------|----|------|
|post_code|integer|null: false|
|prefecture|string|null: false|
|city|string|null: false|
|block|string|null: false|
|building|text||
|telephone_number|integer|null: false|
|user_id|bigint|null: false|
|s_family_name|string|null: false|
|s_first_name|string|null: false|
|s_family_name_kana|string|null: false|
|s_first_name_kana|string|null: false|
- belongs_to :user, optional: true

### productテーブル
|Column|Type|Option|
|------|----|------|
|product_name|string|null: false|
|explain|text|null: false|
|price|integer|null: false|
|brand|string||
|arrive_at|string|null: false|
|condition|text|null: false|
|shipping_fee|string|null: false|
|region_id|integer|null: false|
|user_id|reference|null: false, foreign_key: true|
|buyer_id|reference|foreign_key: true|
|category_id|integer|null: false, foreign_key: true|
- belongs_to_active_hash :region
- has_many :images, dependent: :destroy
- accepts_nested_attributes_for :images, allow_destroy: true
- belongs_to :category
- belongs_to :user
- belongs_to :buyer, class_name: "User", optional: true
- has_many :favorites, through: :favorites, source: :user
- has_many :messages, dependent: :destroy


### imageテーブル
|Column|Type|Option|
|------|----|------|
|src|string|null: false|
|product_id|bigint|null: false, foreign_key: true|
- belongs_to :product

### credit_cardテーブル
|Column|Type|Option|
|------|----|------|  
|user_id|integer|null: false|
|customer_id|string|null: false|
|card_id|string|null: false|
- belongs_to :user


### categoryテーブル
|Column|Type|Option|
|------|----|------|  
|name|string|null: false|
|ancestry|string|null: false|
- belongs_to :product
- has_ancestry

### favoriteテーブル
|Column|Type|Option|
|------|----|------|  
|user_id|bigint|null: false|
|product_id|bigint|null: false|
- belongs_to :user
- belongs_to :product

### messageテーブル
|Column|Type|Option|
|------|----|------|  
|text|string||
|user_id|integer||
|product_id|integer||
- belongs_to :product
- belongs_to :user