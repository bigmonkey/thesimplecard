class CreateSniffs < ActiveRecord::Migration
  def change
    create_table :sniffs do |t|
	  t.string "sniff_desc", :limit => 5
      t.timestamps
    end
  end
end
