class CreateSubWeapons < ActiveRecord::Migration
  def change
    create_table :sub_weapons do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
