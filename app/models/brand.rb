class Brand < ActiveRecord::Base
  include ::AfConverter

  belongs_to :strong_power, class_name: "Power"
  belongs_to :weak_power, class_name: "Power"

  default_scope { includes(:strong_power, :weak_power) }

  validates :name, uniqueness: true

  def description
    strong_power_name = strong_power ? strong_power.name : I18n.t("common.none")
    weak_power_name = weak_power ? weak_power.name : I18n.t("common.none")
    I18n.t("gears.common.description", name: self.name, strong: strong_power_name, weak: weak_power_name)
  end
end
