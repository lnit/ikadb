json.array!(@weapons) do |weapon|
  json.extract! weapon, :id, :name
  json.main weapon.main_weapon, :weapon_type, :spec1, :spec2, :spec3
  json.sub weapon.sub_weapon, :name
  json.special weapon.special_weapon, :name
end
