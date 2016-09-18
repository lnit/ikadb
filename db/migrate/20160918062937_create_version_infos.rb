class CreateVersionInfos < ActiveRecord::Migration
  def change
    create_table :version_infos do |t|
      t.string :controller_name
      t.string :version_str

      t.timestamps null: false
    end
  end
end
