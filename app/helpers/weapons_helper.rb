module WeaponsHelper
  def type_columns_for_select
    options_for_select(
      MainWeapon::TYPE_KEY.map.with_index do |key, index|
        [I18n.t(key, scope: "common.weapon_type").to_af_str, index]
      end
    )
  end

  def sub_weapon_columns_for_select
    options_for_select(SubWeapon.all.map{|b| [b.name, b.id]})
  end

  def special_weapon_columns_for_select
    options_for_select(SpecialWeapon.all.map{|b| [b.name, b.id]})
  end

  def range_columns_for_select
    options_for_select(
      MainWeapon.where.not(range: nil).order(range: :desc).map do |w|
        [I18n.t("weapons.index.search.spec_column", n: w.range.to_s.to_af_str, name: w.name), w.range]
      end
    )
  end

  def compare_columns_for_select
    options_for_select(I18n.t("weapons.index.search.compare_columns").map{|k, v| [v, k]})
  end
end
