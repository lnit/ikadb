class AddRealDamageColumnsToSubWeapon < ActiveRecord::Migration
  def change
    add_column :sub_weapons, :real_damage, :float
    add_column :sub_weapons, :max_damage, :float
  end
end
