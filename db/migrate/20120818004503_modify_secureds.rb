class ModifySecureds < ActiveRecord::Migration
  def up
    add_column("secureds", "inst_decision", :boolean)
  end

  def down
  	remove_column("secureds", "inst_decision")
   end
end
