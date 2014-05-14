class CreateMyCards < ActiveRecord::Migration
  def change
    create_table :my_cards do |t|
    	t.integer "user_id"
    	t.string "card_name"
    	t.decimal "annual_fee", precision: 5, scale: 2
    	t.decimal "purchase_apr", precision: 4, scale: 2
    	t.decimal "monthly_balance", precision: 7, scale: 2
    	t.decimal "credit_limit", precision: 7, scale: 2
    	t.decimal "monthly_spend", precision: 7, scale: 2
      t.string "phone"
      t.timestamps
    end
  end
end
