module WeaponsHelper
  def type_columns_for_select
    options_for_select(
      MainWeapon::TYPE_KEY.map.with_index do |key, index|
        [I18n.t(key, scope: "common.weapon_type"), index]
      end
    )
  end

  def sub_weapon_columns_for_select
    options_for_select(SubWeapon.pluck(:name, :id))
  end

  def special_weapon_columns_for_select
    options_for_select(SpecialWeapon.pluck(:name, :id))
  end
end
