class CreateSpecialWeapons < ActiveRecord::Migration
  def change
    create_table :special_weapons do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
