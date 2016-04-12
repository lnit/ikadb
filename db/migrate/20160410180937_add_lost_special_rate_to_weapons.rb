class AddLostSpecialRateToWeapons < ActiveRecord::Migration
  def change
    add_column :weapons, :loss_special_rate, :integer
  end
end
