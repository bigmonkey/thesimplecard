class CreateTracks < ActiveRecord::Migration
  def change
    create_table :tracks do |t|
			t.string "conversion_key", :limit => 20
      t.string "src_code", :limit => 4
	  	t.string "page_code", :limit => 4
			t.string "campaign", :limit => 128
			t.string "ad_group", :limit => 255
			t.string "kw", :limit => 80
			t.string "creative", :limit => 25
			t.string "placement", :limit => 255
		  t.integer "partner_id"
      t.timestamps
    end
  end
end
