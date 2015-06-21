class CreateWeapons < ActiveRecord::Migration
  def change
    create_table :weapons do |t|
      t.string :name
      t.integer :price
      t.belongs_to :main_weapon, index: true
      t.belongs_to :sub_weapon, index: true
      t.belongs_to :special_weapon, index: true

      t.timestamps null: false
    end
    add_index :weapons, :name
    add_foreign_key :weapons, :main_weapons
    add_foreign_key :weapons, :sub_weapons
    add_foreign_key :weapons, :special_weapons
  end
end
