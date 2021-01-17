users = [
  {nickname: 'test', email: 'test@gmail.com', password: '123abc'},
  {nickname: 'yuta', email: 'yuta@gmail.com', password: '123abc'},
  {nickname: 'mika', email: 'mika@gmail.com', password: '123abc'},
  {nickname: 'mai', email: 'mai@gmail.com', password: '123abc'},
  {nickname: 'pinky', email: 'pinky@gmail.com', password: '123abc'},
  {nickname: 'ryota', email: 'ryota@gmail.com', password: '123abc'},
  {nickname: 'taka', email: 'taka@gmail.com', password: '123abc'},
  {nickname: 'ken', email: 'ken@gmail.com', password: '123abc'},
  {nickname: 'momo', email: 'momo@gmail.com', password: '123abc'},
  {nickname: 'syota', email: 'syota@gmail.com', password: '123abc'},
  {nickname: 'taro', email: 'taro@gmail.com', password: '123abc'},
  {nickname: 'jiro', email: 'jiro@gmail.com', password: '123abc'},
  {nickname: 'yoko', email: 'yoko@gmail.com', password: '123abc'},
  {nickname: 'kenta', email: 'kenta@gmail.com', password: '123abc'},
  {nickname: 'akari', email: 'akari@gmail.com', password: '123abc'},
  {nickname: 'masashi', email: 'masashi@gmail.com', password: '123abc'},
  {nickname: 'kei', email: 'kei@gmail.com', password: '123abc'},
  {nickname: 'rena', email: 'rena@gmail.com', password: '123abc'},
  {nickname: 'shun', email: 'shun@gmail.com', password: '123abc'},
  {nickname: 'mana', email: 'mana@gmail.com', password: '123abc'}
]

users.each do |user|
  User.create(user)
end

users = []
User.all.each do |user|
  users << User.find(user.id)
end

user1 = User.find(users[0][:id])
user2 = User.find(users[1][:id])
user3 = User.find(users[2][:id])
user4 = User.find(users[3][:id])
user5 = User.find(users[4][:id])
user6 = User.find(users[5][:id])
  
article_text = "木曾路はすべて山の中である。あるところは岨づたいに行く崖の道であり、あるところは数十間の深さに臨む木曾川の岸であり、あるところは山の尾をめぐる谷の入り口である。一筋の街道はこの深い森林地帯を貫いていた。東ざかいの桜沢から、西の十曲峠まで、木曾十一宿はこの街道に添うて、二十二里余にわたる長い谿谷の間に散在していた。道路の位置も幾たびか改まったもので、古道はいつのまにか深い山間に埋もれた。名高い桟も、蔦のかずらを頼みにしたような危い場処ではなくなって、徳川時代の末にはすでに渡ることのできる橋であった。新規に新規にとできた道はだんだん谷の下の方の位置へと降って来た。道の狭いところには、木を伐って並べ、藤づるでからめ、それで街道の狭いのを補った。長い間にこの木曾路に起こって来た変化は、いくらかずつでも嶮岨な山坂の多いところを歩きよくした。そのかわり、大雨ごとにやって来る河水の氾濫が旅行を困難にする。"
articles = [
  {title: '【雨の日限定】梅雨だからこそいきたい鎌倉のおすすめスポット', category_id: 2, text: article_text, user_id: user1.id},
  {title: '集中力が続かないあなたへ。長時間集中できる勉強法を伝授します！', category_id: 12, text: article_text, user_id: user1.id},
  {title: '【車で１時間圏内】関東おすすめのドライブスポット', category_id: 2, text: article_text, user_id: user1.id},
  {title: '【穴場スポット】富士山が見えるレストランをご紹介', category_id: 8, text: article_text, user_id: user2.id},
  {title: '【最新版】全国の花火大会スケジュール', category_id: 6, text: article_text, user_id: user2.id},
  {title: '早く起きた朝は…豪華な朝食から1日を始めよう', category_id: 2, text: article_text, user_id: user2.id},
  {title: '【お中元】お世話になった人にあげたいお中元ベスト１０', category_id: 3, text: article_text, user_id: user3.id},
  {title: '【夏季限定】富士山を見ながらバーベキューできる場所を紹介', category_id: 9, text: article_text, user_id: user3.id},
  {title: '【お正月】家族で遊べるボードゲーム特集', category_id: 11, text: article_text, user_id: user3.id},
  {title: '【クリスマス向け】大切な人に喜ばれたい…もらってうれしい男女別おすすめプレゼント', category_id: 4, text: article_text, user_id: user4.id},
  {title: '【今が見頃！】全国の紅葉スポット５０選', category_id: 2, text: article_text, user_id: user4.id},
  {title: '【絶景】海外の海が綺麗な国〜ヨーロッパ編〜', category_id: 2, text: article_text, user_id: user4.id},
  {title: '【気になるあの人と】デートにおすすめ都内の夏祭り５選', category_id: 4, text: article_text, user_id: user5.id},
  {title: '【職場でもプライベートでも】都内のおすすめ花見スポット', category_id: 3, text: article_text, user_id: user5.id},
  {title: '寒さに負けない！おすすめ防寒グッズ！', category_id: 3, text: article_text, user_id: user5.id},
  {title: '【ステイホーム】一人でも楽しめるアクションゲーム〜PS5編〜', category_id: 11, text: article_text, user_id: user6.id},
  {title: '【バレンタイン】チョコはもう古い？価格別おすすめプレゼント', category_id: 4, text: article_text, user_id: user6.id},
  {title: '【人気急上昇】都心から２時間で行ける島に旅行にいってみた', category_id: 2, text: article_text, user_id: user6.id}
  ]

i = 1
articles.each do |article|
  Article.create(article).image.attach(io: File.open("./db/fixtures/cover_#{i}.JPG"), filename: "cover_#{i}.JPG")
  i += 1
end

articles = []
Article.all.each do |article|
  articles << Article.find(article.id)
end

comment_text = ["ためになりました！", "とても面白かったです！", "ぜひ試してみようと思います。", "丁寧にまとめられていて助かりました。", "ありがとうございました！"]
50.times do
  Comment.create(text: comment_text[rand(0..4)], article_id: articles[rand(0..17)].id, user_id: users[rand(0..19)].id)
end

num = 17
u_id = 6
a_id = 0
while u_id <= 19 do
  num.times do |i|
    Favorite.create(user_id: users[u_id].id, article_id: articles[a_id + i].id)
  end
  num -= 1 
  u_id += 1
end

num = 17
u_id = 6
a_id = 14
while u_id <= 19 do
  num.times do |i|
    GoodEvaluation.create(user_id: users[u_id].id, article_id: articles[a_id - i].id)
  end
  num -= 1 
  u_id += 1
end

19.times do |i|
  Relationship.create(user_id: users[i + 1].id, follow_id: user1.id)
end

19.times do |i|
  Relationship.create(user_id: user1.id, follow_id: users[i + 1].id)
end
