class Power < ActiveRecord::Base
  include ::AfConverter

  validates :name, uniqueness: true
end
