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
Weapon.create(name: "スプラシューター コラボ",
                    main_weapon_id: 2, sub_weapon_id: 2, special_weapon_id: 1)

#Weapon.create(name: "",
#                    main_weapon_id: , sub_weapon_id: , special_weapon_id: )


