class CreateSpecialWeapons < ActiveRecord::Migration
  def change
    create_table :special_weapons do |t|
      t.string :name

      t.timestamps null: false
    end
    add_index :special_weapons, :id
  end
end
