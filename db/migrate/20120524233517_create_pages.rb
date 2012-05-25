class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
	  t.string "page_name", :limit => 50
	  t.string "page_code", :limit => 4
      t.timestamps
    end

    add_index(:pages, :page_code, :unique => true)
  end
end