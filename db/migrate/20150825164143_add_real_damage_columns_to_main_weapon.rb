class AddRealDamageColumnsToMainWeapon < ActiveRecord::Migration
  def change
    add_column :main_weapons, :real_damage, :float
    add_column :main_weapons, :max_damage, :float
  end
end
