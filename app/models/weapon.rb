class Weapon < ActiveRecord::Base
  belongs_to :main_weapon
  belongs_to :sub_weapon
  belongs_to :special_weapon
end
