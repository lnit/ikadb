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

  def type_to_key
    return unless self.weapon_type
    TYPE_KEY[self.weapon_type]
  end

  def spec(ordinal)
    return unless self.weapon_type
    self.__send__(SPEC_KEY[self.weapon_type][ordinal-1])
  end
end
