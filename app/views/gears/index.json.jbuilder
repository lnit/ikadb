json.array!(@gears) do |gear|
  json.extract! gear, :id, :name, :slot
  json.brand gear.brand, :name
  json.power gear.power, :name
end
