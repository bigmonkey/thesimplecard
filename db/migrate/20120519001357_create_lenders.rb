class CreateLenders < ActiveRecord::Migration
  def change
    create_table :lenders do |t|
      t.integer "sniff_id"
      t.string "name"
      t.string "url_code"
      t.string "link"
      t.string "lender_type"
      t.string "image_file"
      t.decimal "ranking", :precision => 3, :scale => 1
      t.string "first_comment"
      t.string "second_comment"	
      t.string "third_comment"
      t.string "since", :limit => 4
      t.string "governing_law"
      t.boolean "BBB_accredit"
      t.string "BBB_score", :limit => 4
      t.integer "BBB_complaints"
      t.integer "BBB_unresponded"
	  t.string "max_loan"
	  t.boolean "spanish"
	  t.boolean "state_lic"
	  t.boolean "privacy_policy"
	  t.boolean "https"
	  t.boolean "phone_contact"
	  t.boolean "live_chat"
	  t.boolean "time_at_residence"
	  t.boolean "rent_or_own"
	  t.boolean "rent_mort_amt"
	  t.boolean "time_w_employer"
	  t.boolean "reference"
	  t.decimal "loan_amt", :precision => 6, :scale =>2
	  t.decimal "payments", :precision => 4, :scale =>1
	  t.decimal "pmt_freq_in_days", :precision => 5, :scale =>1
	  t.decimal "pmt_amt", :precision => 7, :scale =>2
	  t.decimal "cost", :precision => 7, :scale =>2
	  t.decimal "apr", :precision => 3, :scale =>2
      t.timestamps
    end
    
    add_index("lenders", "sniff_id")
    
  end
end
