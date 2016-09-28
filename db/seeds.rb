# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Prefecture.create!(name: "北海道")
Prefecture.create!(name: "青森県")
Prefecture.create!(name: "岩手県")
Prefecture.create!(name: "宮城県")
Prefecture.create!(name: "秋田県")
Prefecture.create!(name: "山形県")
Prefecture.create!(name: "福島県")
Prefecture.create!(name: "茨城県")
Prefecture.create!(name: "栃木県")
Prefecture.create!(name: "群馬県")
Prefecture.create!(name: "埼玉県")
Prefecture.create!(name: "千葉県")
Prefecture.create!(name: "東京都")
Prefecture.create!(name: "神奈川県")
Prefecture.create!(name: "新潟県")
Prefecture.create!(name: "富山県")
Prefecture.create!(name: "石川県")
Prefecture.create!(name: "福井県")
Prefecture.create!(name: "山梨県")
Prefecture.create!(name: "長野県")
Prefecture.create!(name: "岐阜県")
Prefecture.create!(name: "静岡県")
Prefecture.create!(name: "愛知県")
Prefecture.create!(name: "三重県")
Prefecture.create!(name: "滋賀県")
Prefecture.create!(name: "京都府")
Prefecture.create!(name: "大阪府")
Prefecture.create!(name: "兵庫県")
Prefecture.create!(name: "奈良県")
Prefecture.create!(name: "和歌山県")
Prefecture.create!(name: "鳥取県")
Prefecture.create!(name: "島根県")
Prefecture.create!(name: "岡山県")
Prefecture.create!(name: "広島県")
Prefecture.create!(name: "山口県")
Prefecture.create!(name: "徳島県")
Prefecture.create!(name: "香川県")
Prefecture.create!(name: "愛媛県")
Prefecture.create!(name: "高知県")
Prefecture.create!(name: "福岡県")
Prefecture.create!(name: "佐賀県")
Prefecture.create!(name: "長崎県")
Prefecture.create!(name: "熊本県")
Prefecture.create!(name: "大分県")
Prefecture.create!(name: "宮崎県")
Prefecture.create!(name: "鹿児島県")
Prefecture.create!(name: "沖縄県")

RAMEN_PHOTO_DIR = File.expand_path("seeds/images/ramen_photos", __dir__)

Shop.create!(id: 1,
             name: "中華蕎麦 とみ田",
             prefecture_id: Prefecture.find_by(name: "千葉県").id,
             address: "松戸市松戸1339 高橋ビル1F",
             tel: "047-368-8860",
             about: nil,
             open_time: "11:00",
             close_time: "15:00",
             holiday: "水曜日（祝日、祭日もお休みです）",
             evaluation: 5.0,
             image: (File.open(File.join(RAMEN_PHOTO_DIR, "1.jpg")) rescue nil))

Shop.create!(id: 2,
             name: "麺屋 一燈",
             prefecture_id: Prefecture.find_by(name: "東京都").id,
             address: "葛飾区東新小岩1-4-17",
             tel: "03-3697-9787",
             about: "濃厚系",
             open_time: "11:00",
             close_time: "22:00",
             holiday: "不定休",
             evaluation: 4.9,
             image: (File.open(File.join(RAMEN_PHOTO_DIR, "2.jpg"))))

Shop.create!(id: 3,
             name: "煮干中華ソバ イチカワ",
             prefecture_id: Prefecture.find_by(name: "茨城県").id,
             address: "つくば市天久保2-9-2 リッチモンド二番街 A101",
             tel: "不明",
             about: "煮干しソバ 750円",
             open_time: "11:30",
             close_time: "14:00",
             holiday: "日曜日・水曜日（その他不定休あり）",
             evaluation: 4.8,
             image: (File.open(File.join(RAMEN_PHOTO_DIR, "3.jpg"))))

30.times do |n|
  name = "ラーメン店#{n + 1}号"
  prefecture = n + 1
  address = "松江市"
  tel = "0120123456"
  open_time = "10:00"
  close_time = "20:00"
  evaluation = 3.3
  image = ""
  Shop.create!(name: name,
               prefecture_id: prefecture,
               address: address,
               tel: tel,
               about: nil,
               open_time: open_time,
               close_time: close_time,
               holiday: nil,
               evaluation: evaluation,
               image: image)
end
