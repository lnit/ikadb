module GearsHelper
  def gear_type_columns_for_select
    options_for_select(
      Gear::TYPE_KEY.map.with_index do |key, index|
        [I18n.t(key, scope: "common.gear_type"), index]
      end
    )
  end

  def gear_power_columns_for_select
    options_for_select(Power.all.map{|b| [b.name, b.id]})
  end

  def gear_brand_columns_for_select
    options_for_select(Brand.all.map{|b| [b.description, b.id]})
  end
end
