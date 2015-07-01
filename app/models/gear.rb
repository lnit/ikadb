class Gear < ActiveRecord::Base
  belongs_to :brand
  belongs_to :power

  default_scope { includes(:brand, :power) }
end
