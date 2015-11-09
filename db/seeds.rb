require "csv"

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
                              MainWeapon::SHOOTER_ID, 32,      32, nil, nil, nil,                  75, nil, nil])
create_main_weapon([2, "スプラシューター",
                              MainWeapon::SHOOTER_ID, 50,     45, nil, nil, nil,                  55, nil, nil])
create_main_weapon([3, "プライムシューター",
                              MainWeapon::SHOOTER_ID, 68,     55, nil, nil, nil,                 40, nil, nil])
create_main_weapon([4, ".52ガロン",
                              MainWeapon::SHOOTER_ID, 50,     70, nil, nil, nil,                 30, nil, nil])
create_main_weapon([5, ".96ガロン",
                              MainWeapon::SHOOTER_ID, 68,     80, nil, nil, nil,                 15, nil, nil])
create_main_weapon([6, "プロモデラー",
                              MainWeapon::SHOOTER_ID, 32,      20, nil, nil, nil,                  100, nil, nil])
create_main_weapon([7, "ジェットスイーパー",
                              MainWeapon::SHOOTER_ID, 80,     32, nil, nil, nil,                  40, nil, nil])
create_main_weapon([8, "デュアルスイーパー",
                              MainWeapon::SHOOTER_ID, 68,     27, nil, nil, nil,                  55, nil, nil])
create_main_weapon([9, "N-ZAP",
                              MainWeapon::SHOOTER_ID, 50,     32, nil, nil, nil,                  75, nil, nil])
create_main_weapon([10, "シャープマーカー",
                              MainWeapon::SHOOTER_ID, 32,      26, nil, nil, nil,                  75, nil, nil])
create_main_weapon([11, "L3リールガン",
                              MainWeapon::SHOOTER_ID, 60,     40, nil, nil, nil,                  75, nil, nil])
create_main_weapon([24, "ボールドマーカー",
                              MainWeapon::SHOOTER_ID, 15,      55, nil, nil, nil,                  75, nil, nil])
create_main_weapon([0, "H3リールガン",
                              MainWeapon::SHOOTER_ID, 68,     40, nil, nil, nil,                  30, nil, nil])

#                     :name, :weapon_type,            :range, :attack, :damage, :charge, :speed, :rapid, :mobility, :weight
create_main_weapon([12, "ホットブラスター",
                              MainWeapon::BLASTER_ID, 25,      nil, 70, nil, nil,                  20, nil, nil])
create_main_weapon([13, "ラピッドブラスター",
                              MainWeapon::BLASTER_ID, 45,      nil, 35, nil, nil,                  40, nil, nil])
create_main_weapon([0,  "Rブラスターエリート",
                              MainWeapon::BLASTER_ID, 65,      nil, 35, nil, nil,                  30, nil, nil])
create_main_weapon([21, "ノヴァブラスター",
                              MainWeapon::BLASTER_ID,  10,      nil, 80, nil, nil,                 30, nil, nil])
create_main_weapon([26, "ロングブラスター",
                              MainWeapon::BLASTER_ID,  35,      nil, 60, nil, nil,                 10, nil, nil])

#                     :name, :weapon_type,            :range, :attack, :damage, :charge, :speed, :rapid, :mobility, :weight
create_main_weapon([14, "スプラチャージャー",
                              MainWeapon::CHARGER_ID, 85,     nil, nil, 50, nil,                 nil, 40, nil])
create_main_weapon([15, "スプラスコープ",
                              MainWeapon::CHARGER_ID, 88,     nil, nil, 50, nil,                 nil, 35, nil])
create_main_weapon([16, "スクイックリン",
                              MainWeapon::CHARGER_ID, 65,     nil, nil, 70, nil,                 nil, 60, nil])
create_main_weapon([17, "リッター3K",
                              MainWeapon::CHARGER_ID, 97,     nil, nil, 20, nil,                  nil, 15, nil])
create_main_weapon([25, "3Kスコープ",
                              MainWeapon::CHARGER_ID, 100,     nil, nil, 20, nil,                  nil, 10, nil])
create_main_weapon([0, "14式竹筒銃",
                              MainWeapon::CHARGER_ID, 72,     nil, nil, 90, nil,                  nil, 80, nil])

#                     :name, :weapon_type,            :range, :attack, :damage, :charge, :speed, :rapid, :mobility, :weight
create_main_weapon([18, "スプラローラー",
                              MainWeapon::ROLLER_ID,  55,     nil, nil, nil, 50,                 nil, nil, 40])
create_main_weapon([19, "ダイナモローラー",
                              MainWeapon::ROLLER_ID,  72,     nil, nil, nil, 30,                  nil, nil, 20])
create_main_weapon([22, "カーボンローラー",
                              MainWeapon::ROLLER_ID,  20,      nil, nil, nil, 65,                 nil, nil, 70])
create_main_weapon([20, "パブロ",
                              MainWeapon::ROLLER_ID,  10,      nil, nil, nil, 100,                 nil, nil, 100])
create_main_weapon([23, "ホクサイ",
                              MainWeapon::ROLLER_ID,  25,      nil, nil, nil, 80,                 nil, nil, 80])

#                     :name, :weapon_type,            :range, :attack, :damage, :charge, :speed, :rapid, :mobility, :weight
create_main_weapon([0, "バケットスロッシャー",
                              MainWeapon::SLOSHER_ID,  52,      90, nil, nil, nil,                 nil, nil, 50])
create_main_weapon([0, "ヒッセン",
                              MainWeapon::SLOSHER_ID,  33,      80, nil, nil, nil,                 nil, nil, 70])

#                     :name, :weapon_type,            :range, :attack, :damage, :charge, :speed, :rapid, :mobility, :weight
create_main_weapon([0, "バレルスピナー",
                              MainWeapon::SPINNER_ID, 78,     nil, nil, 40, nil,                  nil, 50, nil])
create_main_weapon([0, "スプラスピナー",
                              MainWeapon::SPINNER_ID, 58,     nil, nil, 80, nil,                  nil, 90, nil])

# TODO: いい感じにcreate_or_updateする
MainWeapon.find_by(name: "わかばシューター").update_attributes(real_damage: 28.0, max_damage: 33.3)
MainWeapon.find_by(name: "スプラシューター").update_attributes(real_damage: 35.0, max_damage: nil)
MainWeapon.find_by(name: "プライムシューター").update_attributes(real_damage: 42.0, max_damage: 49.9)
MainWeapon.find_by(name: ".52ガロン").update_attributes(real_damage: 52.0, max_damage: nil)
MainWeapon.find_by(name: ".96ガロン").update_attributes(real_damage: 62.0, max_damage: nil)
MainWeapon.find_by(name: "プロモデラー").update_attributes(real_damage: 24.5, max_damage: 24.9)
MainWeapon.find_by(name: "ジェットスイーパー").update_attributes(real_damage: 31.0, max_damage: 33.3)
MainWeapon.find_by(name: "デュアルスイーパー").update_attributes(real_damage: 28.0, max_damage: 33.3)
MainWeapon.find_by(name: "N-ZAP").update_attributes(real_damage: 28.0, max_damage: 33.3)
MainWeapon.find_by(name: "シャープマーカー").update_attributes(real_damage: 28.0, max_damage: 33.3)
MainWeapon.find_by(name: "L3リールガン").update_attributes(real_damage: 29.0, max_damage: 33.3)
MainWeapon.find_by(name: "H3リールガン").update_attributes(real_damage: 41.0, max_damage: 49.9)
MainWeapon.find_by(name: "ボールドマーカー").update_attributes(real_damage: 38.0, max_damage: nil)
MainWeapon.find_by(name: "ホットブラスター").update_attributes(real_damage: 125.0, max_damage: nil)
MainWeapon.find_by(name: "ラピッドブラスター").update_attributes(real_damage: 80.0, max_damage: 99.9)
MainWeapon.find_by(name: "ノヴァブラスター").update_attributes(real_damage: 125.0, max_damage: nil)
MainWeapon.find_by(name: "ロングブラスター").update_attributes(real_damage: 125.0, max_damage: nil)
MainWeapon.find_by(name: "バレルスピナー").update_attributes(real_damage: 28.0, max_damage: 33.3)
MainWeapon.find_by(name: "スプラスピナー").update_attributes(real_damage: 28.0, max_damage: 33.3)


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

create_sub_weapon([11, "クイックボム(直撃)"])
create_sub_weapon([12, "クイックボム(爆風中央)"])
create_sub_weapon([12, "クイックボム(爆風外周)"])
create_sub_weapon([13, "クイックボム(直撃＋爆風)"])

SubWeapon.find_by(name: "クイックボム(直撃)").update_attributes(real_damage: 60.0, max_damage: nil)
SubWeapon.find_by(name: "クイックボム(爆風中央)").update_attributes(real_damage: 35.0, max_damage: nil)
SubWeapon.find_by(name: "クイックボム(爆風外周)").update_attributes(real_damage: 20.0, max_damage: nil)
SubWeapon.find_by(name: "クイックボム(直撃＋爆風)").update_attributes(real_damage: 95.0, max_damage: nil)

create_special_weapon([1, "スーパーショット"])
create_special_weapon([2, "メガホンレーザー"])
create_special_weapon([3, "トルネード"])
create_special_weapon([4, "バリア"])
create_special_weapon([5, "ボムラッシュ"])
create_special_weapon([6, "ダイオウイカ"])
create_special_weapon([7, "スーパーセンサー"])

Weapon.create(name: "わかばシューター",
                    main_weapon_name: "わかばシューター", sub_weapon_name: "スプラッシュボム", special_weapon_name: "バリア")
Weapon.create(name: "もみじシューター",
                    main_weapon_name: "わかばシューター", sub_weapon_name: "ポイズンボール",special_weapon_name: "スーパーセンサー")
Weapon.create(name: "スプラシューター",
                    main_weapon_name: "スプラシューター", sub_weapon_name: "クイックボム", special_weapon_name: "ボムラッシュ")
Weapon.create(name: "スプラシューターコラボ",
                    main_weapon_name: "スプラシューター", sub_weapon_name: "キューバンボム", special_weapon_name: "スーパーショット")
Weapon.create(name: "ヒーローシューター レプリカ",
                    main_weapon_name: "スプラシューター", sub_weapon_name: "クイックボム", special_weapon_name: "ボムラッシュ")
Weapon.create(name: "オクタシューター レプリカ",
                    main_weapon_name: "スプラシューター", sub_weapon_name: "キューバンボム", special_weapon_name: "スーパーショット")
Weapon.create(name: "プライムシューター",
                    main_weapon_name: "プライムシューター", sub_weapon_name: "スプラッシュボム", special_weapon_name: "トルネード")
Weapon.create(name: "プライムシューターコラボ",
                    main_weapon_name: "プライムシューター", sub_weapon_name: "ポイントセンサー", special_weapon_name: "スーパーショット")
Weapon.create(name: ".52ガロン",
                    main_weapon_name: ".52ガロン", sub_weapon_name: "スプラッシュシールド", special_weapon_name: "メガホンレーザー")
Weapon.create(name: ".52ガロンデコ",
                    main_weapon_name: ".52ガロン", sub_weapon_name: "チェイスボム", special_weapon_name: "トルネード")
Weapon.create(name: ".96ガロン",
                    main_weapon_name: ".96ガロン", sub_weapon_name: "スプリンクラー", special_weapon_name: "スーパーセンサー")
Weapon.create(name: ".96ガロンデコ",
                    main_weapon_name: ".96ガロン", sub_weapon_name: "スプラッシュシールド", special_weapon_name: "ダイオウイカ")
Weapon.create(name: "プロモデラーMG",
                    main_weapon_name: "プロモデラー", sub_weapon_name: "チェイスボム", special_weapon_name: "スーパーショット")
Weapon.create(name: "プロモデラーRG",
                    main_weapon_name: "プロモデラー", sub_weapon_name: "トラップ", special_weapon_name: "トルネード")
Weapon.create(name: "ジェットスイーパー",
                    main_weapon_name: "ジェットスイーパー", sub_weapon_name: "スプラッシュシールド", special_weapon_name: "トルネード")
Weapon.create(name: "ジェットスイーパーカスタム",
                    main_weapon_name: "ジェットスイーパー", sub_weapon_name: "クイックボム", special_weapon_name: "ダイオウイカ")
Weapon.create(name: "デュアルスイーパー",
                    main_weapon_name: "デュアルスイーパー", sub_weapon_name: "スプラッシュボム", special_weapon_name: "スーパーセンサー")
Weapon.create(name: "デュアルスイーパーカスタム",
                    main_weapon_name: "デュアルスイーパー", sub_weapon_name: "ジャンプビーコン", special_weapon_name: "メガホンレーザー")
Weapon.create(name: "N-ZAP85",
                    main_weapon_name: "N-ZAP", sub_weapon_name: "スプラッシュボム", special_weapon_name: "スーパーセンサー")
Weapon.create(name: "N-ZAP89",
                    main_weapon_name: "N-ZAP", sub_weapon_name: "スプリンクラー", special_weapon_name: "トルネード")
Weapon.create(name: "シャープマーカー",
                    main_weapon_name: "シャープマーカー", sub_weapon_name: "キューバンボム", special_weapon_name: "ボムラッシュ")
Weapon.create(name: "シャープマーカーネオ",
                    main_weapon_name: "シャープマーカー", sub_weapon_name: "クイックボム", special_weapon_name: "スーパーショット")
Weapon.create(name: "L3リールガン",
                    main_weapon_name: "L3リールガン", sub_weapon_name: "ポイズンボール", special_weapon_name: "メガホンレーザー")
Weapon.create(name: "L3リールガンD",
                    main_weapon_name: "L3リールガン", sub_weapon_name: "クイックボム", special_weapon_name: "ダイオウイカ")
Weapon.create(name: "H3リールガン",
                    main_weapon_name: "H3リールガン", sub_weapon_name: "キューバンボム", special_weapon_name: "スーパーセンサー")
Weapon.create(name: "ボールドマーカー",
                    main_weapon_name: "ボールドマーカー", sub_weapon_name: "ジャンプビーコン", special_weapon_name: "メガホンレーザー")
Weapon.create(name: "ホットブラスター",
                    main_weapon_name: "ホットブラスター", sub_weapon_name: "ポイズンボール", special_weapon_name: "メガホンレーザー")
Weapon.create(name: "ホットブラスターカスタム",
                    main_weapon_name: "ホットブラスター", sub_weapon_name: "ポイントセンサー", special_weapon_name: "バリア")
Weapon.create(name: "ラピッドブラスター",
                    main_weapon_name: "ラピッドブラスター", sub_weapon_name: "トラップ", special_weapon_name: "バリア")
Weapon.create(name: "ラピッドブラスターデコ",
                    main_weapon_name: "ラピッドブラスター", sub_weapon_name: "キューバンボム", special_weapon_name: "ボムラッシュ")
Weapon.create(name: "Rブラスターエリート",
                    main_weapon_name: "Rブラスターエリート", sub_weapon_name: "チェイスボム", special_weapon_name: "スーパーショット")
Weapon.create(name: "ノヴァブラスター",
                    main_weapon_name: "ノヴァブラスター", sub_weapon_name: "トラップ", special_weapon_name: "スーパーショット")
Weapon.create(name: "ロングブラスター",
                    main_weapon_name: "ロングブラスター", sub_weapon_name: "スプラッシュシールド", special_weapon_name: "トルネード")
Weapon.create(name: "ロングブラスターカスタム",
                    main_weapon_name: "ロングブラスター", sub_weapon_name: "スプラッシュボム", special_weapon_name: "ダイオウイカ")

Weapon.create(name: "スプラチャージャー",
                    main_weapon_name: "スプラチャージャー", sub_weapon_name: "スプラッシュボム", special_weapon_name: "ボムラッシュ")
Weapon.create(name: "スプラチャージャーワカメ",
                    main_weapon_name: "スプラチャージャー", sub_weapon_name: "スプリンクラー", special_weapon_name: "メガホンレーザー")
Weapon.create(name: "スプラスコープ",
                    main_weapon_name: "スプラスコープ", sub_weapon_name: "スプラッシュボム", special_weapon_name: "ボムラッシュ")
Weapon.create(name: "スプラスコープワカメ",
                    main_weapon_name: "スプラスコープ", sub_weapon_name: "スプリンクラー", special_weapon_name: "メガホンレーザー")
Weapon.create(name: "ヒーローチャージャー レプリカ",
                    main_weapon_name: "スプラスコープ", sub_weapon_name: "スプラッシュボム", special_weapon_name: "ボムラッシュ")
Weapon.create(name: "スクイックリンα",
                    main_weapon_name: "スクイックリン", sub_weapon_name: "ポイントセンサー", special_weapon_name: "バリア")
Weapon.create(name: "スクイックリンβ",
                    main_weapon_name: "スクイックリン", sub_weapon_name: "トラップ", special_weapon_name: "スーパーショット")
Weapon.create(name: "リッター3K",
                    main_weapon_name: "リッター3K", sub_weapon_name: "クイックボム", special_weapon_name: "スーパーセンサー")
Weapon.create(name: "リッター3Kカスタム",
                    main_weapon_name: "リッター3K", sub_weapon_name: "ジャンプビーコン", special_weapon_name: "ダイオウイカ")
Weapon.create(name: "3Kスコープ",
                    main_weapon_name: "3Kスコープ", sub_weapon_name: "クイックボム", special_weapon_name: "スーパーセンサー")
Weapon.create(name: "3Kスコープカスタム",
                    main_weapon_name: "3Kスコープ", sub_weapon_name: "ジャンプビーコン", special_weapon_name: "ダイオウイカ")
Weapon.create(name: "14式竹筒銃・甲",
                    main_weapon_name: "14式竹筒銃", sub_weapon_name: "スプラッシュシールド", special_weapon_name: "メガホンレーザー")

Weapon.create(name: "スプラローラー",
                    main_weapon_name: "スプラローラー", sub_weapon_name: "キューバンボム", special_weapon_name: "メガホンレーザー")
Weapon.create(name: "スプラローラーコラボ",
                    main_weapon_name: "スプラローラー", sub_weapon_name: "ジャンプビーコン", special_weapon_name: "ダイオウイカ")
Weapon.create(name: "ヒーローローラー レプリカ",
                    main_weapon_name: "スプラローラー", sub_weapon_name: "キューバンボム", special_weapon_name: "メガホンレーザー")
Weapon.create(name: "ダイナモローラー",
                    main_weapon_name: "ダイナモローラー", sub_weapon_name: "スプリンクラー", special_weapon_name: "スーパーセンサー")
Weapon.create(name: "ダイナモローラーテスラ",
                    main_weapon_name: "ダイナモローラー", sub_weapon_name: "スプラッシュボム", special_weapon_name: "トルネード")
Weapon.create(name: "カーボンローラー",
                    main_weapon_name: "カーボンローラー", sub_weapon_name: "クイックボム", special_weapon_name: "スーパーショット")
Weapon.create(name: "カーボンローラーデコ",
                    main_weapon_name: "カーボンローラー", sub_weapon_name: "チェイスボム", special_weapon_name: "ボムラッシュ")
Weapon.create(name: "パブロ",
                    main_weapon_name: "パブロ", sub_weapon_name: "スプリンクラー", special_weapon_name: "トルネード")
Weapon.create(name: "パブロ・ヒュー",
                    main_weapon_name: "パブロ", sub_weapon_name: "トラップ", special_weapon_name: "バリア")
Weapon.create(name: "ホクサイ",
                    main_weapon_name: "ホクサイ", sub_weapon_name: "ジャンプビーコン", special_weapon_name: "ダイオウイカ")

Weapon.create(name: "バケットスロッシャー",
                    main_weapon_name: "バケットスロッシャー", sub_weapon_name: "クイックボム", special_weapon_name: "トルネード")
Weapon.create(name: "ヒッセン",
                    main_weapon_name: "ヒッセン", sub_weapon_name: "ポイズンボール", special_weapon_name: "バリア")

Weapon.create(name: "バレルスピナー",
                    main_weapon_name: "バレルスピナー", sub_weapon_name: "スプラッシュシールド", special_weapon_name: "トルネード")
Weapon.create(name: "スプラスピナー",
                    main_weapon_name: "スプラスピナー", sub_weapon_name: "キューバンボム", special_weapon_name: "スーパーショット")

#Weapon.create(name: "",
#                    main_weapon_name: , sub_weapon_name: , special_weapon_name: )


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
create_brand([16, nil, nil, "ファミ通"])
create_brand([17, nil, nil, "侵略！イカ娘"])

csvs = [
  CSV.table("db/data_seeds/gears.csv"),
  CSV.table("db/data_seeds/gears_v200.csv"),
]
csvs.each do |gears|
  gears.each do |row|
    Gear.create(row.to_hash)
  end
end
