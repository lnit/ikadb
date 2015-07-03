# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def create_klass_data(klass, keys, ary)
  ary = ary.drop(1) # 最初に識別用のIDが入るので取り除く
  attr = {}
  keys.each_with_index do |key, index|
    attr[key] = ary[index]
  end
  klass.create(attr)
end

def create_main_weapon(ary)
  keys = [:name, :weapon_type, :range, :attack, :damage, :charge, :speed, :rapid, :mobility, :weight]
  create_klass_data(MainWeapon, keys, ary)
end

def create_sub_weapon(ary)
  keys = [:name]
  create_klass_data(SubWeapon, keys, ary)
end

def create_special_weapon(ary)
  keys = [:name]
  create_klass_data(SpecialWeapon, keys, ary)
end


#                     :name, :weapon_type,            :range, :attack, :damage, :charge, :speed, :rapid, :mobility, :weight
create_main_weapon([1, "わかばシューター",
                              MainWeapon::SHOOTER_ID, 6,      6, nil, nil, nil,                  15, nil, nil])
create_main_weapon([2, "スプラシューター",
                              MainWeapon::SHOOTER_ID, 10,     9, nil, nil, nil,                  11, nil, nil])
create_main_weapon([3, "プライムシューター",
                              MainWeapon::SHOOTER_ID, 14,     11, nil, nil, nil,                 8, nil, nil])
create_main_weapon([4, ".52ガロン",
                              MainWeapon::SHOOTER_ID, 10,     14, nil, nil, nil,                 6, nil, nil])
create_main_weapon([5, ".96ガロン",
                              MainWeapon::SHOOTER_ID, 14,     16, nil, nil, nil,                 3, nil, nil])
create_main_weapon([6, "プロモデラー",
                              MainWeapon::SHOOTER_ID, 6,      4, nil, nil, nil,                  20, nil, nil])
create_main_weapon([7, "ジェットスイーパー",
                              MainWeapon::SHOOTER_ID, 16,     6, nil, nil, nil,                  8, nil, nil])
create_main_weapon([8, "デュアルスイーパー",
                              MainWeapon::SHOOTER_ID, 14,     5, nil, nil, nil,                  11, nil, nil])
create_main_weapon([9, "N-ZAP89",
                              MainWeapon::SHOOTER_ID, 10,     6, nil, nil, nil,                  15, nil, nil])
create_main_weapon([10, "シャープマーカー",
                              MainWeapon::SHOOTER_ID, 8,      6, nil, nil, nil,                  17, nil, nil])
create_main_weapon([11, "L3リールガン",
                              MainWeapon::SHOOTER_ID, 11,     8, nil, nil, nil,                  13, nil, nil])

#                     :name, :weapon_type,            :range, :attack, :damage, :charge, :speed, :rapid, :mobility, :weight
create_main_weapon([12, "ホットブラスター",
                              MainWeapon::BLASTER_ID, 5,      nil, 14, nil, nil,                  4, nil, nil])
create_main_weapon([13, "ラピッドブラスター",
                              MainWeapon::BLASTER_ID, 9,      nil, 7, nil, nil,                  8, nil, nil])

#                     :name, :weapon_type,            :range, :attack, :damage, :charge, :speed, :rapid, :mobility, :weight
create_main_weapon([14, "スプラチャージャー",
                              MainWeapon::CHARGER_ID, 17,     nil, nil, 10, nil,                 nil, 9, nil])
create_main_weapon([15, "スプラスコープ",
                              MainWeapon::CHARGER_ID, 17,     nil, nil, 10, nil,                 nil, 7, nil])
create_main_weapon([16, "スクイックリン",
                              MainWeapon::CHARGER_ID, 13,     nil, nil, 14, nil,                 nil, 12, nil])
create_main_weapon([17, "リッター3K",
                              MainWeapon::CHARGER_ID, 20,     nil, nil, 4, nil,                  nil, 3, nil])

#                     :name, :weapon_type,            :range, :attack, :damage, :charge, :speed, :rapid, :mobility, :weight
create_main_weapon([18, "スプラローラー",
                              MainWeapon::ROLLER_ID,  11,     nil, nil, nil, 10,                 nil, nil, 9])
create_main_weapon([19, "カーボンローラー",
                              MainWeapon::ROLLER_ID,  14,     nil, nil, nil, 6,                  nil, nil, 4])
create_main_weapon([20, "パブロ",
                              MainWeapon::ROLLER_ID,  2,      nil, nil, nil, 20,                 nil, nil, 18])

create_main_weapon([20, "ノヴァブラスター",
                              MainWeapon::BLASTER_ID,  2,      nil, 16, nil, nil,                 6, nil, nil])

create_main_weapon([21, "カーボンローラー",
                              MainWeapon::ROLLER_ID,  4,      nil, nil, nil, 14,                 nil, nil, 12])

create_sub_weapon([1, "スプラッシュボム"])
create_sub_weapon([2, "キューバンボム"])
create_sub_weapon([3, "クイックボム"])
create_sub_weapon([4, "チェイスボム"])
create_sub_weapon([5, "ポイントセンサー"])
create_sub_weapon([6, "トラップ"])
create_sub_weapon([7, "スプリンクラー"])
create_sub_weapon([8, "ジャンプビーコン"])
create_sub_weapon([9, "スプラッシュシールド"])
create_sub_weapon([10,"ポイズンボール"])

create_special_weapon([1, "スーパーショット"])
create_special_weapon([2, "メガホンレーザー"])
create_special_weapon([3, "トルネード"])
create_special_weapon([4, "バリア"])
create_special_weapon([5, "ボムラッシュ"])
create_special_weapon([6, "ダイオウイカ"])
create_special_weapon([7, "スーパーセンサー"])

Weapon.create(name: "わかばシューター",
                    main_weapon_id: 1, sub_weapon_id: 1, special_weapon_id: 4)
Weapon.create(name: "もみじシューター",
                    main_weapon_id: 1, sub_weapon_id: 10,special_weapon_id: 7)
Weapon.create(name: "スプラシューター",
                    main_weapon_id: 2, sub_weapon_id: 3, special_weapon_id: 3)
Weapon.create(name: "スプラシューターコラボ",
                    main_weapon_id: 2, sub_weapon_id: 2, special_weapon_id: 1)
Weapon.create(name: "ヒーローシューター レプリカ",
                    main_weapon_id: 2, sub_weapon_id: 3, special_weapon_id: 5)
Weapon.create(name: "プライムシューター",
                    main_weapon_id: 3, sub_weapon_id: 1, special_weapon_id: 3)
Weapon.create(name: "プライムシューターコラボ",
                    main_weapon_id: 3, sub_weapon_id: 5, special_weapon_id: 1)
Weapon.create(name: ".52ガロン",
                    main_weapon_id: 4, sub_weapon_id: 9, special_weapon_id: 2)
Weapon.create(name: ".52ガロンデコ",
                    main_weapon_id: 4, sub_weapon_id: 4, special_weapon_id: 3)
Weapon.create(name: ".96ガロン",
                    main_weapon_id: 5, sub_weapon_id: 7, special_weapon_id: 7)
Weapon.create(name: "プロモデラーMG",
                    main_weapon_id: 6, sub_weapon_id: 4, special_weapon_id: 1)
Weapon.create(name: "プロモデラーRG",
                    main_weapon_id: 6, sub_weapon_id: 6, special_weapon_id: 3)
Weapon.create(name: "ジェットスイーパー",
                    main_weapon_id: 7, sub_weapon_id: 9, special_weapon_id: 3)
Weapon.create(name: "ジェットスイーパーカスタム",
                    main_weapon_id: 7, sub_weapon_id: 3, special_weapon_id: 6)
Weapon.create(name: "デュアルスイーパー",
                    main_weapon_id: 8, sub_weapon_id: 1, special_weapon_id: 7)
Weapon.create(name: "デュアルスイーパーカスタム",
                    main_weapon_id: 8, sub_weapon_id: 8, special_weapon_id: 2)
Weapon.create(name: "N-ZAP89",
                    main_weapon_id: 9, sub_weapon_id: 1, special_weapon_id: 7)
Weapon.create(name: "シャープマーカー",
                    main_weapon_id: 10, sub_weapon_id: 2, special_weapon_id: 5)
Weapon.create(name: "L3リールガン",
                    main_weapon_id: 11, sub_weapon_id: 10, special_weapon_id: 2)
Weapon.create(name: "ホットブラスター",
                    main_weapon_id: 12, sub_weapon_id: 10, special_weapon_id: 2)
Weapon.create(name: "ホットブラスターカスタム",
                    main_weapon_id: 12, sub_weapon_id: 5, special_weapon_id: 4)
Weapon.create(name: "ラピッドブラスター",
                    main_weapon_id: 13, sub_weapon_id: 6, special_weapon_id: 4)
Weapon.create(name: "ラピッドブラスターデコ",
                    main_weapon_id: 13, sub_weapon_id: 2, special_weapon_id: 5)
Weapon.create(name: "ノヴァブラスター",
                    main_weapon_id: 20, sub_weapon_id: 6, special_weapon_id: 1)

Weapon.create(name: "スプラチャージャー",
                    main_weapon_id: 14, sub_weapon_id: 1, special_weapon_id: 5)
Weapon.create(name: "スプラチャージャーワカメ",
                    main_weapon_id: 14, sub_weapon_id: 7, special_weapon_id: 2)
Weapon.create(name: "スプラスコープ",
                    main_weapon_id: 15, sub_weapon_id: 1, special_weapon_id: 5)
Weapon.create(name: "スプラスコープワカメ",
                    main_weapon_id: 15, sub_weapon_id: 7, special_weapon_id: 2)
Weapon.create(name: "ヒーローチャージャー レプリカ",
                    main_weapon_id: 15, sub_weapon_id: 1, special_weapon_id: 5)
Weapon.create(name: "スクイックリンα",
                    main_weapon_id: 16, sub_weapon_id: 5, special_weapon_id: 4)
Weapon.create(name: "スクイックリンβ",
                    main_weapon_id: 16, sub_weapon_id: 6, special_weapon_id: 1)
Weapon.create(name: "リッター3K",
                    main_weapon_id: 17, sub_weapon_id: 3, special_weapon_id: 7)
Weapon.create(name: "リッター3Kカスタム",
                    main_weapon_id: 17, sub_weapon_id: 8, special_weapon_id: 6)

Weapon.create(name: "スプラローラー",
                    main_weapon_id: 18, sub_weapon_id: 2, special_weapon_id: 2)
Weapon.create(name: "スプラローラーコラボ",
                    main_weapon_id: 18, sub_weapon_id: 8, special_weapon_id: 6)
Weapon.create(name: "ヒーローローラー レプリカ",
                    main_weapon_id: 18, sub_weapon_id: 2, special_weapon_id: 2)
Weapon.create(name: "ダイナモローラー",
                    main_weapon_id: 19, sub_weapon_id: 7, special_weapon_id: 7)
Weapon.create(name: "ダイナモローラーテスラ",
                    main_weapon_id: 19, sub_weapon_id: 1, special_weapon_id: 3)
Weapon.create(name: "カーボンローラー",
                    main_weapon_id: 21, sub_weapon_id: 3, special_weapon_id: 1)
Weapon.create(name: "パブロ",
                    main_weapon_id: 20, sub_weapon_id: 7, special_weapon_id: 3)

#Weapon.create(name: "",
#                    main_weapon_id: , sub_weapon_id: , special_weapon_id: )


def create_power(ary)
  keys = [:name]
  create_klass_data(Power, keys, ary)
end

def create_brand(ary)
  keys = [:strong_power_id, :weak_power_id, :name]
  create_klass_data(Brand, keys, ary)
end

create_power([1, "攻撃力アップ"])
create_power([2, "防御力アップ"])
create_power([3, "インク効率アップ(メイン)"])
create_power([4, "インク効率アップ(サブ)"])
create_power([5, "インク回復力アップ"])
create_power([6, "ヒト移動速度アップ"])
create_power([7, "イカダッシュ速度アップ"])
create_power([8, "スペシャル増加量アップ"])
create_power([9, "スペシャル時間延長"])
create_power([10, "復活時間短縮"])
create_power([11, "スペシャル減少量ダウン"])
create_power([12, "スーパージャンプ時間短縮"])
create_power([13, "ボム飛距離アップ"])

create_power([14, "スタートダッシュ"])
create_power([15, "ラストスパート"])
create_power([16, "逆境強化"])
create_power([17, "カムバック"])
create_power([18, "マーキングガード"])
create_power([19, "イカニンジャ"])
create_power([20, "うらみ"])
create_power([21, "スタートレーダー"])
create_power([22, "ボムサーチ"])
create_power([23, "安全シューズ"])
create_power([24, "ステルスジャンプ"])

create_brand([1,  12, 10, "アイロニック"])
create_brand([2,  5,  12, "アロメ"])
create_brand([3,  11, 8, "エゾッコ"])
create_brand([4,  7,  2, "クラーゲス"])
create_brand([5,  2,  1, "シグレニ"])
create_brand([6,  3,  6, "ジモン"])
create_brand([7,  1,  3, "バトロイカ"])
create_brand([8,  9,  4, "フォーリマ"])
create_brand([9,  10, 11, "ホタックス"])
create_brand([10, 4,  5, "ホッコリー"])
create_brand([11, 8,  9, "ヤコ"])
create_brand([12, 6,  7, "ロッケンベルグ"])
create_brand([13, nil, nil, "アタリメイド"])
create_brand([14, nil, nil, "KOG"])
create_brand([15, nil, nil, "amiibo"])

Gear.create(brand_id: 1, power_id: 6, gear_type: Gear::HEAD_ID, slot: 1, name: "キャディ サンバイザー")
Gear.create(brand_id: 1, power_id: 14, gear_type: Gear::HEAD_ID, slot: 1, name: "バスケバンド")
Gear.create(brand_id: 1, power_id: 1, gear_type: Gear::HEAD_ID, slot: 1, name: "スカッシュバンド")
Gear.create(brand_id: 2, power_id: 17, gear_type: Gear::HEAD_ID, slot: 1, name: "テニスバンド")
Gear.create(brand_id: 3, power_id: 15, gear_type: Gear::HEAD_ID, slot: 1, name: "イロメガネ")
Gear.create(brand_id: 3, power_id: 12, gear_type: Gear::HEAD_ID, slot: 1, name: "エゾッコメッシュ")
Gear.create(brand_id: 3, power_id: 10, gear_type: Gear::HEAD_ID, slot: 1, name: "バックワードキャップ")
Gear.create(brand_id: 3, power_id: 4, gear_type: Gear::HEAD_ID, slot: 1, name: "ランニングバンド")
Gear.create(brand_id: 9, power_id: 13, gear_type: Gear::HEAD_ID, slot: 1, name: "ウーニーズBBキャップ")
Gear.create(brand_id: 9, power_id: 4, gear_type: Gear::HEAD_ID, slot: 1, name: "ビバレッジキャップ")
Gear.create(brand_id: 9, power_id: 16, gear_type: Gear::HEAD_ID, slot: 1, name: "ウインターボンボン")
Gear.create(brand_id: 5, power_id: 3, gear_type: Gear::HEAD_ID, slot: 1, name: "ショートビーニー")
Gear.create(brand_id: 5, power_id: 9, gear_type: Gear::HEAD_ID, slot: 1, name: "キャンプハット")
Gear.create(brand_id: 4, power_id: 11, gear_type: Gear::HEAD_ID, slot: 1, name: "2ラインメッシュ")
Gear.create(brand_id: 11, power_id: 2, gear_type: Gear::HEAD_ID, slot: 1, name: "ヤコメッシュ")
Gear.create(brand_id: 5, power_id: 7, gear_type: Gear::HEAD_ID, slot: 1, name: "キャンプキャップ")
Gear.create(brand_id: 7, power_id: 5, gear_type: Gear::HEAD_ID, slot: 1, name: "ヘッドバンド ホワイト")
Gear.create(brand_id: 6, power_id: 10, gear_type: Gear::HEAD_ID, slot: 1, name: "クロブチ レトロ")
Gear.create(brand_id: 10, power_id: 11, gear_type: Gear::HEAD_ID, slot: 1, name: "ジェットキャップ")
Gear.create(brand_id: 10, power_id: 8, gear_type: Gear::HEAD_ID, slot: 1, name: "ヤキフグ サンバイザー")

Gear.create(brand_id: 8, power_id: 1, gear_type: Gear::HEAD_ID, slot: 2, name: "ダイバーゴーグル")
Gear.create(brand_id: 8, power_id: 15, gear_type: Gear::HEAD_ID, slot: 2, name: "ロブスターブーニー")
Gear.create(brand_id: 3, power_id: 17, gear_type: Gear::HEAD_ID, slot: 2, name: "5パネルキャップ")
Gear.create(brand_id: 9, power_id: 8, gear_type: Gear::HEAD_ID, slot: 2, name: "イカベーダーキャップ")
Gear.create(brand_id: 2, power_id: 8, gear_type: Gear::HEAD_ID, slot: 2, name: "ダテコンタクト")
Gear.create(brand_id: 3, power_id: 16, gear_type: Gear::HEAD_ID, slot: 2, name: "アローバンド ブラック")
Gear.create(brand_id: 8, power_id: 2, gear_type: Gear::HEAD_ID, slot: 2, name: "スプラッシュゴーグル")
Gear.create(brand_id: 8, power_id: 3, gear_type: Gear::HEAD_ID, slot: 2, name: "スタジオヘッドホン")
Gear.create(brand_id: 8, power_id: 4, gear_type: Gear::HEAD_ID, slot: 2, name: "オーロラヘッドホン")
Gear.create(brand_id: 6, power_id: 12, gear_type: Gear::HEAD_ID, slot: 2, name: "ボンボンニット")
Gear.create(brand_id: 6, power_id: 14, gear_type: Gear::HEAD_ID, slot: 2, name: "ボーダービーニー")
Gear.create(brand_id: 9, power_id: 11, gear_type: Gear::HEAD_ID, slot: 2, name: "スケボーメット")
Gear.create(brand_id: 10, power_id: 7, gear_type: Gear::HEAD_ID, slot: 2, name: "カモメッシュ")
Gear.create(brand_id: 13, power_id: 6, gear_type: Gear::HEAD_ID, slot: 2, name: "ヒーローヘッズ レプリカ")
Gear.create(brand_id: 13, power_id: 13, gear_type: Gear::HEAD_ID, slot: 2, name: "タコゾネススコープ")
Gear.create(brand_id: 15, power_id: 2, gear_type: Gear::HEAD_ID, slot: 2, name: "パワードマスク")
Gear.create(brand_id: 15, power_id: 1, gear_type: Gear::HEAD_ID, slot: 2, name: "サムライヘルメット")
Gear.create(brand_id: 15, power_id: 7, gear_type: Gear::HEAD_ID, slot: 2, name: "イカパッチン")

Gear.create(brand_id: 8, power_id: 6, gear_type: Gear::HEAD_ID, slot: 3, name: "テンタクルズメット")
Gear.create(brand_id: 8, power_id: 16, gear_type: Gear::HEAD_ID, slot: 3, name: "タコマスク")
Gear.create(brand_id: 8, power_id: 17, gear_type: Gear::HEAD_ID, slot: 3, name: "フェイスゴーグル")
Gear.create(brand_id: 8, power_id: 13, gear_type: Gear::HEAD_ID, slot: 3, name: "パイロットゴーグル")
Gear.create(brand_id: 9, power_id: 15, gear_type: Gear::HEAD_ID, slot: 3, name: "バイザーメット")
Gear.create(brand_id: 9, power_id: 5, gear_type: Gear::HEAD_ID, slot: 3, name: "サイクルメット")
Gear.create(brand_id: 9, power_id: 14, gear_type: Gear::HEAD_ID, slot: 3, name: "チドリキャップ")
Gear.create(brand_id: 3, power_id: 9, gear_type: Gear::HEAD_ID, slot: 3, name: "アローバンド ホワイト")
Gear.create(brand_id: 10, power_id: 3, gear_type: Gear::HEAD_ID, slot: 3, name: "サファリハット")

Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 7, power_id: 10, name: "わかばイカT")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 1, power_id: 1, name: "アイロニックレイヤード")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 1, power_id: 9, name: "アイロニックロング")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 1, power_id: 6, name: "ウーニーズBBシャツ")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 1, power_id: 4, name: "バスケジャージ アウェイ")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 2, power_id: 6, name: "イカノメT ブラック")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 2, power_id: 18, name: "イカノメT ライトブルー")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 2, power_id: 1, name: "かくれパイレーツ")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 3, power_id: 2, name: "エゾッコラグラン")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 4, power_id: 8, name: "サニーオレンジT")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 4, power_id: 3, name: "レイニーブルーT")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 5, power_id: 19, name: "ボーダーモスグリーン")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 5, power_id: 20, name: "ヤマビコT アイボリー")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 5, power_id: 4, name: "ヤマビコT ブルー")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 6, power_id: 7, name: "カレッジスウェット グレー")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 6, power_id: 21, name: "カレッジラグラン")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 6, power_id: 19, name: "さくらエビポロ")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 6, power_id: 13, name: "シャンブレーシャツ")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 6, power_id: 9, name: "パイレーツボーダー")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 6, power_id: 6, name: "マリンボーダー")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 6, power_id: 18, name: "よもぎポロ")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 7, power_id: 13, name: "イカバッテンマスタード")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 7, power_id: 20, name: "イカバッテンロング")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 7, power_id: 9, name: "イカブラック")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 7, power_id: 4, name: "イカホワイト")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 7, power_id: 8, name: "カモガサネ")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 7, power_id: 12, name: "マスタードガサネ")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 7, power_id: 3, name: "レイヤード ブラック")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 7, power_id: 11, name: "レイヤード ホワイト")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 8, power_id: 5, name: "おどるイカアロハ")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 9, power_id: 5, name: "グレープT")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 9, power_id: 2, name: "ミントT")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 10, power_id: 2, name: "ヤキフグ8bit ブラック")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 10, power_id: 21, name: "ヤキフグ8bit ホワイト")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 11, power_id: 10, name: "トリコロールラガー")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 11, power_id: 12, name: "ベクトルパターン グレー")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 11, power_id: 3, name: "ベクトルパターン レッド")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 12, power_id: 7, name: "ハラグロラグラン")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 12, power_id: 12, name: "ハラシロラグラン")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 12, power_id: 1, name: "ロッケンベルグT ブラック")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 14, power_id: 11, name: "ドカンT ブラック")
Gear.create(slot: 1, gear_type: Gear::BODY_ID, brand_id: 14, power_id: 7, name: "ラインT ホワイト")

Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 1, power_id: 11, name: "バスケジャージ ホーム")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 3, power_id: 19, name: "エゾッコパーカー アズキ")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 3, power_id: 3, name: "ギンガムチェック アカ")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 3, power_id: 13, name: "ギンガムチェック ミドリ")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 3, power_id: 12, name: "バニーポップ ブラック")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 5, power_id: 9, name: "マウンテンベリー")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 6, power_id: 5, name: "シロシャツ")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 6, power_id: 12, name: "ブロックストライプシャツ")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 6, power_id: 2, name: "ベイビークラゲシャツ")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 6, power_id: 1, name: "ボーダーネイビー")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 6, power_id: 10, name: "ボーダーホワイト")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 7, power_id: 18, name: "イカリスウェット")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 7, power_id: 21, name: "ガチブラック")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 10, power_id: 20, name: "アーバンベスト イエロー")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 10, power_id: 9, name: "ジップアップ グリーン")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 10, power_id: 13, name: "ホッコリー ネイビー")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 11, power_id: 6, name: "オレンジボーダーラガー")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 11, power_id: 4, name: "チョコガサネ")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 11, power_id: 11, name: "ベクトルラインガサネ")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 12, power_id: 5, name: "ロッケンベルグT ホワイト")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 13, power_id: 4, name: "タコゾネスプロテクター")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 13, power_id: 7, name: "ヒーロージャケット レプリカ")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 15, power_id: 8, name: "サムライジャケット")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 15, power_id: 5, name: "スクールブレザー")
Gear.create(slot: 2, gear_type: Gear::BODY_ID, brand_id: 15, power_id: 10, name: "パワードスーツ")

Gear.create(slot: 3, gear_type: Gear::BODY_ID, brand_id: 3, power_id: 1, name: "スタジャンロゴマシ")
Gear.create(slot: 3, gear_type: Gear::BODY_ID, brand_id: 5, power_id: 21, name: "マウンテンオリーブ")
Gear.create(slot: 3, gear_type: Gear::BODY_ID, brand_id: 5, power_id: 7, name: "マウンテンダウン")
Gear.create(slot: 3, gear_type: Gear::BODY_ID, brand_id: 7, power_id: 19, name: "ガチホワイト")
Gear.create(slot: 3, gear_type: Gear::BODY_ID, brand_id: 7, power_id: 2, name: "レトロジャッジ")
Gear.create(slot: 3, gear_type: Gear::BODY_ID, brand_id: 10, power_id: 18, name: "アーバンベスト ナイト")
Gear.create(slot: 3, gear_type: Gear::BODY_ID, brand_id: 10, power_id: 10, name: "ジップアップ カモ")
Gear.create(slot: 3, gear_type: Gear::BODY_ID, brand_id: 10, power_id: 8, name: "ミスターベースボール")
Gear.create(slot: 3, gear_type: Gear::BODY_ID, brand_id: 12, power_id: 20, name: "ヴィンテージチェック")
Gear.create(slot: 3, gear_type: Gear::BODY_ID, brand_id: 7, power_id: 11, name: "フェスT")


Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 4, power_id: 11, name: "キャンバス ホワイト")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 1, power_id: 5, name: "シーホース ホワイト")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 1, power_id: 8, name: "シーホースHi ゾンビ")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 1, power_id: 9, name: "シーホースHi パープル")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 1, power_id: 3, name: "シーホースHi レッド")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 2, power_id: 23, name: "ウミウシイエロー")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 2, power_id: 6, name: "ウミウシパープル")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 2, power_id: 1, name: "シアンビーンズ")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 2, power_id: 13, name: "ピンクビーンズ")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 2, power_id: 10, name: "ブラックビーンズ")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 3, power_id: 7, name: "グリッチョ オレンジ")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 3, power_id: 2, name: "グリッチョ ブルー")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 4, power_id: 6, name: "オイスタークロッグ")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 4, power_id: 8, name: "キャンバス クマノミ")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 4, power_id: 22, name: "キャンバス バナナ")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 4, power_id: 24, name: "キャンバスHi マッシュルーム")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 4, power_id: 5, name: "キャンバスHi モロヘイヤ")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 4, power_id: 13, name: "スリッポン ブルー")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 4, power_id: 12, name: "スリッポン レッド")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 4, power_id: 4, name: "ブルーベリーコンフォート")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 11, power_id: 3, name: "オレンジアローズ")
Gear.create(slot: 1, gear_type: Gear::SHOES_ID, brand_id: 12, power_id: 7, name: "ラバーソール ホワイト")

Gear.create(slot: 2, gear_type: Gear::SHOES_ID, brand_id: 1, power_id: 7, name: "シーホース ブラックレザー")
Gear.create(slot: 2, gear_type: Gear::SHOES_ID, brand_id: 1, power_id: 22, name: "シーホース イエロー")
Gear.create(slot: 2, gear_type: Gear::SHOES_ID, brand_id: 1, power_id: 6, name: "シーホースHi ゴールド")
Gear.create(slot: 2, gear_type: Gear::SHOES_ID, brand_id: 4, power_id: 1, name: "アケビコンフォート")
Gear.create(slot: 2, gear_type: Gear::SHOES_ID, brand_id: 4, power_id: 23, name: "キャンバスHi トマト")
Gear.create(slot: 2, gear_type: Gear::SHOES_ID, brand_id: 4, power_id: 2, name: "スリッポン チドリ")
Gear.create(slot: 2, gear_type: Gear::SHOES_ID, brand_id: 4, power_id: 10, name: "チョコクロッグ")
Gear.create(slot: 2, gear_type: Gear::SHOES_ID, brand_id: 5, power_id: 5, name: "トレッキングライト")
Gear.create(slot: 2, gear_type: Gear::SHOES_ID, brand_id: 11, power_id: 9, name: "ホワイトアローズ")
Gear.create(slot: 2, gear_type: Gear::SHOES_ID, brand_id: 12, power_id: 13, name: "ヌバックブーツ イエロー")
Gear.create(slot: 2, gear_type: Gear::SHOES_ID, brand_id: 12, power_id: 10, name: "モトクロスブーツ")
Gear.create(slot: 2, gear_type: Gear::SHOES_ID, brand_id: 12, power_id: 24, name: "ラバーソール チェリー")
Gear.create(slot: 2, gear_type: Gear::SHOES_ID, brand_id: 12, power_id: 8, name: "ラバーソール ターコイズ")
Gear.create(slot: 2, gear_type: Gear::SHOES_ID, brand_id: 13, power_id: 11, name: "タコゾネスブーツ")
Gear.create(slot: 2, gear_type: Gear::SHOES_ID, brand_id: 13, power_id: 12, name: "ヒーローキックス レプリカ")
Gear.create(slot: 2, gear_type: Gear::SHOES_ID, brand_id: 15, power_id: 9, name: "サムライシューズ")
Gear.create(slot: 2, gear_type: Gear::SHOES_ID, brand_id: 15, power_id: 4, name: "スクールローファー")
Gear.create(slot: 2, gear_type: Gear::SHOES_ID, brand_id: 15, power_id: 3, name: "パワードレッグス")

Gear.create(slot: 3, gear_type: Gear::SHOES_ID, brand_id: 2, power_id: 11, name: "ウミウシレッド")
Gear.create(slot: 3, gear_type: Gear::SHOES_ID, brand_id: 3, power_id: 4, name: "グリッチョ グリーン 限定版")
Gear.create(slot: 3, gear_type: Gear::SHOES_ID, brand_id: 5, power_id: 22, name: "トレッキングプロ")
Gear.create(slot: 3, gear_type: Gear::SHOES_ID, brand_id: 11, power_id: 24, name: "クレイジーアローズ")
Gear.create(slot: 3, gear_type: Gear::SHOES_ID, brand_id: 12, power_id: 12, name: "ヌバックブーツ レッド")
Gear.create(slot: 3, gear_type: Gear::SHOES_ID, brand_id: 12, power_id: 23, name: "モトクロス ソリッドブルー")

# Gear.create(gear_type: Gear::, slot: , brand_id: , power_id: , name: "")
