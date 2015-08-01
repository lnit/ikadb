class SubWeapon < ActiveRecord::Base
  validates :name, uniqueness: true
end
