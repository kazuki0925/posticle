User.create(nickname: 'test', email: 'test@gmail.com', password: '123abc')
User.create(nickname: 'yuta', email: 'yuta@gmail.com', password: '123abc')
User.create(nickname: 'mika', email: 'mika@gmail.com', password: '123abc')
User.create(nickname: 'mai', email: 'mai@gmail.com', password: '123abc')
User.create(nickname: 'pinky', email: 'pinky@gmail.com', password: '123abc')
User.create(nickname: 'ryota', email: 'ryota@gmail.com', password: '123abc')
User.create(nickname: 'taka', email: 'taka@gmail.com', password: '123abc')
User.create(nickname: 'ken', email: 'ken@gmail.com', password: '123abc')
User.create(nickname: 'momo', email: 'momo@gmail.com', password: '123abc')
User.create(nickname: 'syota', email: 'syota@gmail.com', password: '123abc')
User.create(nickname: 'taro', email: 'taro@gmail.com', password: '123abc')
User.create(nickname: 'jiro', email: 'jiro@gmail.com', password: '123abc')
User.create(nickname: 'yoko', email: 'yoko@gmail.com', password: '123abc')
User.create(nickname: 'kenta', email: 'kenta@gmail.com', password: '123abc')
User.create(nickname: 'akari', email: 'akari@gmail.com', password: '123abc')
User.create(nickname: 'masashi', email: 'masashi@gmail.com', password: '123abc')
User.create(nickname: 'kei', email: 'kei@gmail.com', password: '123abc')
User.create(nickname: 'rena', email: 'rena@gmail.com', password: '123abc')
User.create(nickname: 'shun', email: 'shun@gmail.com', password: '123abc')
User.create(nickname: 'mana', email: 'mana@gmail.com', password: '123abc')

article_text = "木曾路はすべて山の中である。あるところは岨づたいに行く崖の道であり、あるところは数十間の深さに臨む木曾川の岸であり、あるところは山の尾をめぐる谷の入り口である。一筋の街道はこの深い森林地帯を貫いていた。東ざかいの桜沢から、西の十曲峠まで、木曾十一宿はこの街道に添うて、二十二里余にわたる長い谿谷の間に散在していた。道路の位置も幾たびか改まったもので、古道はいつのまにか深い山間に埋もれた。名高い桟も、蔦のかずらを頼みにしたような危い場処ではなくなって、徳川時代の末にはすでに渡ることのできる橋であった。新規に新規にとできた道はだんだん谷の下の方の位置へと降って来た。道の狭いところには、木を伐って並べ、藤づるでからめ、それで街道の狭いのを補った。長い間にこの木曾路に起こって来た変化は、いくらかずつでも嶮岨な山坂の多いところを歩きよくした。そのかわり、大雨ごとにやって来る河水の氾濫が旅行を困難にする。"
Article.create(title: '【雨の日限定】梅雨だからこそいきたい鎌倉のおすすめスポット', category_id: 2, text: article_text, user_id: 1).image.attach(io: File.open("./db/fixtures/cover_1.JPG"), filename: "cover_1.JPG")
Article.create(title: '集中力が続かないあなたへ。長時間集中できる勉強法を伝授します！', category_id: 12, text: article_text, user_id: 1).image.attach(io: File.open("./db/fixtures/cover_2.JPG"), filename: "cover_2.JPG")
Article.create(title: '【車で１時間圏内】関東おすすめのドライブスポット', category_id: 2, text: article_text, user_id: 1).image.attach(io: File.open("./db/fixtures/cover_3.JPG"), filename: "cover_3.JPG")
Article.create(title: '【穴場スポット】富士山が見えるレストランをご紹介', category_id: 8, text: article_text, user_id: 2).image.attach(io: File.open("./db/fixtures/cover_4.JPG"), filename: "cover_4.JPG")
Article.create(title: '【最新版】全国の花火大会スケジュール', category_id: 6, text: article_text, user_id: 2).image.attach(io: File.open("./db/fixtures/cover_5.JPG"), filename: "cover_5.JPG")
Article.create(title: '早く起きた朝は…豪華な朝食から1日を始めよう', category_id: 2, text: article_text, user_id: 2).image.attach(io: File.open("./db/fixtures/cover_6.JPG"), filename: "cover_6.JPG")
Article.create(title: '【お中元】お世話になった人にあげたいお中元ベスト１０', category_id: 3, text: article_text, user_id: 3).image.attach(io: File.open("./db/fixtures/cover_7.JPG"), filename: "cover_7.JPG")
Article.create(title: '【夏季限定】富士山を見ながらバーベキューできる場所を紹介', category_id: 9, text: article_text, user_id: 3).image.attach(io: File.open("./db/fixtures/cover_8.JPG"), filename: "cover_8.JPG")
Article.create(title: '【お正月】家族で遊べるボードゲーム特集', category_id: 11, text: article_text, user_id: 3).image.attach(io: File.open("./db/fixtures/cover_9.JPG"), filename: "cover_9.JPG")
Article.create(title: '【クリスマス向け】大切な人に喜ばれたい…もらってうれしい男女別おすすめプレゼント', category_id: 4, text: article_text, user_id: 4).image.attach(io: File.open("./db/fixtures/cover_10.JPG"), filename: "cover_10.JPG")
Article.create(title: '【今が見頃！】全国の紅葉スポット５０選', category_id: 2, text: article_text, user_id: 4).image.attach(io: File.open("./db/fixtures/cover_11.JPG"), filename: "cover_11.JPG")
Article.create(title: '【絶景】海外の海が綺麗な国〜ヨーロッパ編〜', category_id: 2, text: article_text, user_id: 4).image.attach(io: File.open("./db/fixtures/cover_12.JPG"), filename: "cover_12.JPG")
Article.create(title: '【気になるあの人と】デートにおすすめ都内の夏祭り５選', category_id: 4, text: article_text, user_id: 5).image.attach(io: File.open("./db/fixtures/cover_13.JPG"), filename: "cover_13.JPG")
Article.create(title: '【職場でもプライベートでも】都内のおすすめ花見スポット', category_id: 3, text: article_text, user_id: 5).image.attach(io: File.open("./db/fixtures/cover_14.JPG"), filename: "cover_14.JPG")
Article.create(title: '寒さに負けない！おすすめ防寒グッズ！', category_id: 3, text: article_text, user_id: 5).image.attach(io: File.open("./db/fixtures/cover_15.JPG"), filename: "cover_15.JPG")
Article.create(title: '【ステイホーム】一人でも楽しめるアクションゲーム〜PS5編〜', category_id: 11, text: article_text, user_id: 6).image.attach(io: File.open("./db/fixtures/cover_16.JPG"), filename: "cover_16.JPG")
Article.create(title: '【バレンタイン】チョコはもう古い？価格別おすすめプレゼント', category_id: 4, text: article_text, user_id: 6).image.attach(io: File.open("./db/fixtures/cover_17.JPG"), filename: "cover_17.JPG")
Article.create(title: '【人気急上昇】都心から２時間で行ける島に旅行にいってみた', category_id: 2, text: article_text, user_id: 6).image.attach(io: File.open("./db/fixtures/cover_18.JPG"), filename: "cover_18.JPG")

comment_text = ["ためになりました！", "とても面白かったです！", "ぜひ試してみようと思います。", "丁寧にまとめられていて助かりました。", "ありがとうございました！"]
50.times do
  Comment.create(text: comment_text[rand(0..4)], article_id: rand(1..18), user_id: rand(1..10))
end

num = 17
u_id = 10
a_id = 1

while u_id <= 20 do
  num.times do
    Favorite.create(user_id: u_id , article_id: a_id)
  end
  num -= 1 
  u_id += 1
  a_id += 1
end

num = 10
u_id = 10
a_id = 5
while u_id <= 20 do
  num.times do
    GoodEvaluation.create(user_id: u_id, article_id: a_id)
  end
  num -= 1 
  u_id += 1
  a_id += 1
end

19.times do |i|
  Relationship.create(user_id: i + 2, follow_id: 1)
end

19.times do |i|
  Relationship.create(user_id: 1, follow_id: i + 2)
end
