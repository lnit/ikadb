class Weapon < ActiveRecord::Base
  belongs_to :main_weapon
  belongs_to :sub_weapon
  belongs_to :special_weapon

  default_scope { includes(:main_weapon, :sub_weapon, :special_weapon).order("main_weapons.weapon_type").order("main_weapons.id").order(:id) }

  validates :name, uniqueness: true
  validates :main_weapon, presence: true
  validates :sub_weapon, presence: true
  validates :special_weapon, presence: true

  def main_weapon_name=(name)
    self.main_weapon = MainWeapon.find_by(name: name)
  end

  def sub_weapon_name=(name)
    self.sub_weapon = SubWeapon.find_by(name: name)
  end

  def special_weapon_name=(name)
    self.special_weapon = SpecialWeapon.find_by(name: name)
  end
end
