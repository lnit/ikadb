class Gear < ActiveRecord::Base
  HEAD_ID = 0
  BODY_ID = 1
  SHOES_ID = 2

  TYPE_KEY = [
    :head,
    :body,
    :shoes
  ]

  belongs_to :brand
  belongs_to :power

  default_scope { includes(:brand, :power).order(:gear_type).order(:slot).order(:brand_id) }

  validates :name, uniqueness: true
  validates :brand, presence: true
  validates :power, presence: true

  def brand_name=(name)
    self.brand = Brand.find_by(name: name)
  end

  def power_name=(name)
    self.power = Power.find_by(name: name)
  end

  def type_key
    return unless self.gear_type
    TYPE_KEY[self.gear_type]
  end

  def type_name
    return unless self.gear_type
    I18n.t(type_key, scope: "common.gear_type")
  end
end
