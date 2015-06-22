json.array!(@weapons) do |weapon|
  json.extract! weapon, :id, :name
  json.main weapon.main_weapon, :type_name, :spec1, :spec2, :spec3
  json.sub weapon.sub_weapon, :name
  json.special weapon.special_weapon, :name
end
