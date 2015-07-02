class Brand < ActiveRecord::Base
  belongs_to :strong_power, class_name: "Power"
  belongs_to :weak_power, class_name: "Power"

  default_scope { includes(:strong_power, :weak_power) }

  def description
    I18n.t("gears.common.description", name: self.name, strong: strong_power.name, weak: weak_power.name)
  end
end
