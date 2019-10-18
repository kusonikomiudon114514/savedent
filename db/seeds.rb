# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Interview.delete_all
Interview.connection.execute("delete from sqlite_sequence where name= 'interviews' ")
Interview.create(name: "一人")
Interview.create(name: "複数")
Interview.create(name: "集団討論")

Mediation.delete_all
Mediation.connection.execute("delete from sqlite_sequence where name= 'mediations' ")
Mediation.create(name: "学校斡旋")
Mediation.create(name: "縁故")
Mediation.create(name: "その他")

Recommended.delete_all
Recommended.connection.execute("delete from sqlite_sequence where name= 'recommendeds' ")
Recommended.create(name:"書類審査")
Recommended.create(name:"面接")
Recommended.create(name:"試験")
Recommended.create(name:"小論文（作文）")

Exam.delete_all
Exam.connection.execute("delete from sqlite_sequence where name= 'exams' ")
Exam.create(name:"一般入試")
Exam.create(name:"特別推薦入試")
Exam.create(name:"指定校推薦入試")
Exam.create(name:"ＡＯ入試")
Exam.create(name:"一般入試")
Exam.create(name:"スポーツ推薦")
Exam.create(name:"自己推薦")
Exam.create(name:"その他")

Field.delete_all
Field.connection.execute("delete from sqlite_sequence where name= 'fields' ")
Field.create(name:"保育・教育")
Field.create(name:"医療・看護")
Field.create(name:"歯科・薬")
Field.create(name:"リハビリ・マッサージ・心理")
Field.create(name:"栄養・調理・製菓")
Field.create(name:"旅行・観光")
Field.create(name:"ホテル・ブライダル")
Field.create(name:"交通・旅客サービス")
Field.create(name:"健康・スポーツ")
Field.create(name:"マスコミ・芸能")
Field.create(name:"映画・映像・番組製作")
Field.create(name:"広告・新聞・雑誌・本")
Field.create(name:"アニメ・声優・マンガ")
Field.create(name:"ファッション・服飾")
Field.create(name:"公務員・法律・政治")
Field.create(name:"ゲーム")
Field.create(name:"コンピュータ")
Field.create(name:"音楽・音響・イベント")
Field.create(name:"植物・フラワー・園芸")
Field.create(name:"動物・畜産・水産")
Field.create(name:"ビジネス（営業・事務・企画）")
Field.create(name:"ビジネス（サービス・販売）")
Field.create(name:"金融・経済・不動産")
Field.create(name:"デザイン")
Field.create(name:"メイク・ネイル・エステ")
Field.create(name:"美容・理容・ヘアメイク")
Field.create(name:"国際・語学")
Field.create(name:"建築・土木・インテリア")
Field.create(name:"イラスト・写真・芸術")
Field.create(name:"福祉")
Field.create(name:"自動車・航空・宇宙")
Field.create(name:"自然・環境・バイオ")
Field.create(name:"機械・電気・電子・化学")

Place.delete_all
Place.connection.execute("delete from sqlite_sequence where name= 'places' ")
Place.create(todohuken:"北海道",localname1:"北海道地方",localname2:"北海道")
Place.create(todohuken:"青森県",localname1:"東北地方",localname2:"北東北")
Place.create(todohuken:"秋田県",localname1:"東北地方",localname2:"北東北")
Place.create(todohuken:"岩手県",localname1:"東北地方",localname2:"北東北")
Place.create(todohuken:"宮城県",localname1:"東北地方",localname2:"南東北")
Place.create(todohuken:"福島県",localname1:"東北地方",localname2:"南東北")
Place.create(todohuken:"山形県",localname1:"東北地方",localname2:"南東北")
Place.create(todohuken:"栃木県",localname1:"関東地方",localname2:"北関東")
Place.create(todohuken:"茨城県",localname1:"関東地方",localname2:"北関東")
Place.create(todohuken:"群馬県",localname1:"関東地方",localname2:"北関東")
Place.create(todohuken:"千葉県",localname1:"関東地方",localname2:"北関東")
Place.create(todohuken:"東京都",localname1:"関東地方",localname2:"南関東")
Place.create(todohuken:"埼玉県",localname1:"関東地方",localname2:"南関東")
Place.create(todohuken:"神奈川県",localname1:"関東地方",localname2:"南関東")
Place.create(todohuken:"新潟県",localname1:"中部地方",localname2:"甲信越")
Place.create(todohuken:"長野県",localname1:"中部地方",localname2:"甲信越")
Place.create(todohuken:"山梨県",localname1:"中部地方",localname2:"甲信越")
Place.create(todohuken:"富山県",localname1:"中部地方",localname2:"北陸")
Place.create(todohuken:"石川県",localname1:"中部地方",localname2:"北陸")
Place.create(todohuken:"福井県",localname1:"中部地方",localname2:"北陸")
Place.create(todohuken:"静岡県",localname1:"中部地方",localname2:"東海")
Place.create(todohuken:"愛知県",localname1:"中部地方",localname2:"東海")
Place.create(todohuken:"岐阜県",localname1:"中部地方",localname2:"東海")
Place.create(todohuken:"三重県",localname1:"近畿地方",localname2:"東海")
Place.create(todohuken:"滋賀県",localname1:"近畿地方",localname2:"関西")
Place.create(todohuken:"和歌山県",localname1:"近畿地方",localname2:"関西")
Place.create(todohuken:"奈良県",localname1:"近畿地方",localname2:"関西")
Place.create(todohuken:"大阪府",localname1:"近畿地方",localname2:"関西")
Place.create(todohuken:"京都府",localname1:"近畿地方",localname2:"関西")
Place.create(todohuken:"兵庫県",localname1:"近畿地方",localname2:"関西")
Place.create(todohuken:"徳島県",localname1:"四国地方",localname2:"北四国")
Place.create(todohuken:"高知県",localname1:"四国地方",localname2:"北四国")
Place.create(todohuken:"愛媛県",localname1:"四国地方",localname2:"南四国")
Place.create(todohuken:"香川県",localname1:"四国地方",localname2:"南四国")
Place.create(todohuken:"島根県",localname1:"中国地方",localname2:"山陰")
Place.create(todohuken:"鳥取県",localname1:"中国地方",localname2:"山陰")
Place.create(todohuken:"岡山県",localname1:"中国地方",localname2:"山陽")
Place.create(todohuken:"広島県",localname1:"中国地方",localname2:"山陽")
Place.create(todohuken:"山口県",localname1:"中国地方",localname2:"山陽")
Place.create(todohuken:"長崎県",localname1:"九州地方",localname2:"北九州")
Place.create(todohuken:"佐賀県",localname1:"九州地方",localname2:"北九州")
Place.create(todohuken:"福岡県",localname1:"九州地方",localname2:"北九州")
Place.create(todohuken:"熊本県",localname1:"九州地方",localname2:"北九州")
Place.create(todohuken:"大分県",localname1:"九州地方",localname2:"北九州")
Place.create(todohuken:"宮崎県",localname1:"九州地方",localname2:"南九州")
Place.create(todohuken:"鹿児島県",localname1:"九州地方",localname2:"南九州")
Place.create(todohuken:"沖縄県",localname1:"九州地方",localname2:"沖縄")

Type.delete_all
Type.connection.execute("delete from sqlite_sequence where name= 'types' ")
Type.create(name:"４年制大学")
Type.create(name:"短期大学")
Type.create(name:"専門学校")

