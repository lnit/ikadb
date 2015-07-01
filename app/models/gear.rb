class Gear < ActiveRecord::Base
  belongs_to :brand
  belongs_to :power
end
