json.array!(@sub_weapons) do |sub_weapon|
  json.extract! sub_weapon, :id, :name
end
