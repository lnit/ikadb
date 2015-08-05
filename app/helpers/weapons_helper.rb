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

  def range_columns_for_select
    options_for_select(
      MainWeapon.where.not(range: nil).order(range: :desc).map do |w|
        [I18n.t("weapons.index.search.spec_column", n: w.range, name: w.name), w.range]
      end
    )
  end

  def compare_columns_for_select
    options_for_select(I18n.t("weapons.index.search.compare_columns").map{|k, v| [v, k]})
  end
end
