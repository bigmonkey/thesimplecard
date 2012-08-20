class ModifySecureds < ActiveRecord::Migration
  def up
    add_column("secureds", "inst_decision", :boolean)
    add_column("secureds", "card_name", :string)
	add_column("secureds", "bullets", :text)
	add_column("secureds", "issuer", :string, :limit  => 100)
	add_column("secureds", "card_type", :string, :limit  => 50)
	add_column("secureds", "purchase_base", :string, :limit  => 1)
	add_column("secureds", "cash_apr", :decimal, :precision => 4, :scale =>2 )
	add_column("secureds", "cash_base", :string, :limit  => 1)
	add_column("secureds", "grace", :string, :limit  => 50)
	add_column("secureds", "late_fee", :string, :limit  => 20)
	add_column("secureds", "return_pmt", :string, :limit  => 20)
	add_column("secureds", "overlimit_fee", :string, :limit  => 20)
	add_column("secureds", "max_credit", :string, :limit  => 20)
	add_column("secureds", "min_deposit", :string, :limit  => 20)
	add_column("secureds", "credit_rating", :string, :limit  => 20)
 	add_column("secureds", "live", :boolean) 
  end

  def down
  	remove_column("secureds", "live")		
  	remove_column("secureds", "credit_rating")		
	remove_column("secureds", "min_deposit")		
	remove_column("secureds", "max_credit")		
	remove_column("secureds", "overlimit_fee")		
	remove_column("secureds", "return_pmt")
	remove_column("secureds", "late_fee")		
	remove_column("secureds", "grace")		
	remove_column("secureds", "cash_base")		
	remove_column("secureds", "cash_apr")		
	remove_column("secureds", "purchase_base")		
	remove_column("secureds", "card_type")		
	remove_column("secureds", "issuer")		
	remove_column("secureds", "bullets")		
	remove_column("secureds", "card_name")		
  	remove_column("secureds", "inst_decision")
   end
end
