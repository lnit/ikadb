class AddReleasedVersionToGear < ActiveRecord::Migration
  def change
    add_column :gears, :released_version, :integer
  end
end
