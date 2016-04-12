json.array!(@weapons) do |weapon|
  json.extract! weapon, :id, :name, :loss_special_rate
  json.main_weapon weapon.main_weapon, :type_name, :spec1, :spec2, :spec3
  json.sub_weapon weapon.sub_weapon, :name
  json.special_weapon weapon.special_weapon, :name
end
