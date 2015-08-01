class Power < ActiveRecord::Base
  validates :name, uniqueness: true
end
