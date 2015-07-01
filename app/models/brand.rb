class Brand < ActiveRecord::Base
  belongs_to :strong_power, class_name: "Power"
  belongs_to :weak_power, class_name: "Power"
end
