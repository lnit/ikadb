class AddRealDamageColumnsToMainWeapon < ActiveRecord::Migration
  def change
    add_column :weapons, :real_damage, :float
    add_column :weapons, :max_damage, :float
  end
end
