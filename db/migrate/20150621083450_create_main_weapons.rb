class CreateMainWeapons < ActiveRecord::Migration
  def change
    create_table :main_weapons do |t|
      t.integer :weapon_type
      t.integer :range
      t.integer :attack
      t.integer :damage
      t.integer :charge
      t.integer :speed
      t.integer :rapid
      t.integer :mobility
      t.integer :weight

      t.timestamps null: false
    end
    add_index :main_weapons, :weapon_type
    add_index :main_weapons, :range
    add_index :main_weapons, :attack
    add_index :main_weapons, :damage
    add_index :main_weapons, :charge
    add_index :main_weapons, :speed
    add_index :main_weapons, :rapid
    add_index :main_weapons, :mobility
    add_index :main_weapons, :weight
  end
end
