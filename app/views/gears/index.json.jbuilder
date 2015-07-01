json.array!(@gears) do |gear|
  json.extract! gear, :id, :name, :type_name, :slot
  json.brand gear.brand, :description
  json.power gear.power, :name
end
