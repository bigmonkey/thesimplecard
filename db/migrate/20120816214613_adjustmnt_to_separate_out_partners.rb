class AdjustmntToSeparateOutPartners < ActiveRecord::Migration
  def up
  	remove_column("secureds", "lender_link")
  	remove_column("secureds", "lender_tail")
    add_column("secureds", "partner_id", :integer)
    add_column("lenders", "partner_id", :integer)
  end

  def down
    remove_column("lenders", "partner_id")
    remove_column("secureds", "partner_id")    
  	add_column("secureds", "lender_tail", :string, :limit => 100)
  	add_column("secureds", "lender_link", :string, :limit => 100)
   end
end
