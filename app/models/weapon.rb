class Weapon < ActiveRecord::Base
  belongs_to :main_weapon
  belongs_to :sub_weapon
  belongs_to :special_weapon

  default_scope { includes(:main_weapon, :sub_weapon, :special_weapon) }

  validates :name, uniqueness: true
end
