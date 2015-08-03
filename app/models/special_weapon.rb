class SpecialWeapon < ActiveRecord::Base
  validates :name, uniqueness: true
end
