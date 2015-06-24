module WeaponsHelper
  def type_columns_for_select
    options_for_select(
      MainWeapon::TYPE_KEY.map.with_index do |key, index|
        [I18n.t(key, scope: "common.weapon_type"), index]
      end
    )
  end
end
