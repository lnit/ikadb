class CreateLinkBlocks < ActiveRecord::Migration
  def change
    create_table :link_blocks do |t|
      t.string :name

      t.timestamps null: false
    end
  end
end
