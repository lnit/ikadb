# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
def create_weapon_data(klass, keys, ary)
  ary = ary.drop(1) # 最初に識別用のIDが入るので取り除く
  attr = {}
  keys.each_with_index do |key, index|
    attr[key] = ary[index]
  end
  klass.create(attr)
end

def create_main_weapon(ary)
  keys = [:name, :weapon_type, :range, :attack, :damage, :charge, :speed, :rapid, :mobility, :weight]
  create_weapon_data(MainWeapon, keys, ary)
end

def create_sub_weapon(ary)
  keys = [:name]
  create_weapon_data(SubWeapon, keys, ary)
end

def create_special_weapon(ary)
  keys = [:name]
  create_weapon_data(SpecialWeapon, keys, ary)
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
Weapon.create(name: "パブロ",
                    main_weapon_id: 20, sub_weapon_id: 7, special_weapon_id: 3)

#Weapon.create(name: "",
#                    main_weapon_id: , sub_weapon_id: , special_weapon_id: )


