class CreateBrands < ActiveRecord::Migration
  def change
    create_table :brands do |t|
      t.string :name
      t.integer :strong_power_id
      t.integer :weak_power_id

      t.timestamps null: false
    end
  end
end
