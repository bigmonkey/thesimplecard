class CreateSources < ActiveRecord::Migration
  def change
    create_table :sources do |t|
      t.string "src_code", :limit => 4
      t.string "src_desc", :limit => 50
      t.timestamps
    end
    add_index(:sources, :src_code, :unique => true)
  end
end