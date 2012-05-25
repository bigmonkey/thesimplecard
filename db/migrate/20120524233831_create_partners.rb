class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
	  t.string "lender_link" 
	  t.string "lender_tail", :limit => 25
      t.timestamps
    end
  end
end
