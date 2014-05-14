class CreateMyCards < ActiveRecord::Migration
  def change
    create_table :my_cards do |t|
    	t.integer "user_id"
    	t.string "card_name"
    	t.decimal "annual_fee"
    	t.decimal "purchase_apr"
    	t.decimal "monthly_balance"
    	t.decimal "credit_limit"
    	t.decimal "monthly_spend"
      t.string "phone"
      t.timestamps
    end
  end
end
