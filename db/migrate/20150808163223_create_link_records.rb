class CreateLinkRecords < ActiveRecord::Migration
  def change
    create_table :link_records do |t|
      t.string :name
      t.text :url
      t.text :description
      t.belongs_to :link_block, index: true

      t.timestamps null: false
    end
    add_foreign_key :link_records, :link_blocks
  end
end
