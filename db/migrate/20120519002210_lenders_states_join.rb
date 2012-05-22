class LendersStatesJoin < ActiveRecord::Migration
  def up
  	create_table :lenders_states, :id => false do |t|
   		t.integer "lender_id"
   		t.integer "state_id" 		
  	end
  	add_index :lenders_states, ["lender_id", "state_id"]  	 
  	
  end

  def down
  	drop_table :lenders_states
  end
end
