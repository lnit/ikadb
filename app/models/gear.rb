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
  validates :gear_type, presence: true
  validates :brand, presence: true
  validates :power, presence: true

  def type_name=(name)
    # 面倒になったので日本語ベタ書きで
    self.gear_type = case name
      when "アタマ" then
        HEAD_ID
      when "フク" then
        BODY_ID
      when "クツ" then
        SHOES_ID
    end
  end

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
