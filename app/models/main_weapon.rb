class MainWeapon < ActiveRecord::Base
  SHOOTER_ID = 0
  BLASTER_ID = 1
  CHARGER_ID = 2
  ROLLER_ID  = 3

  TYPE_KEY = [
    :shooter,
    :blaster,
    :charger,
    :roller,
  ]
  SPEC_KEY = [
    [:range, :attack, :rapid], #SHOOTER
    [:range, :damage, :rapid], #BLASTER
    [:range, :charge, :mobility], #CHARGER
    [:range, :speed,  :weight] #ROLLER
  ]

  def type_key
    return unless self.weapon_type
    TYPE_KEY[self.weapon_type]
  end

  def type_name
    return unless self.weapon_type
    I18n.t(type_key, scope: "common.weapon_type")
  end

  def spec(ordinal)
    return unless self.weapon_type
    self.__send__(SPEC_KEY[self.weapon_type][ordinal-1])
  end

  def spec1 ; spec(1) ; end
  def spec2 ; spec(2) ; end
  def spec3 ; spec(3) ; end
end
