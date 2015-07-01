class CreateGears < ActiveRecord::Migration
  def change
    create_table :gears do |t|
      t.string :name
      t.integer :gear_type
      t.integer :slot
      t.belongs_to :brand, index: true

      t.timestamps null: false
    end
    add_index :gears, :name
    add_index :gears, :gear_type
    add_index :gears, :slot
    add_foreign_key :gears, :brands
  end
end
