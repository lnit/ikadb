json.array!(@main_weapons) do |main_weapon|
  json.extract! main_weapon, :id, :name, :weapon_type, :real_damage, :max_damage
end
