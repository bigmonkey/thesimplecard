class LendersTermStatesJoin < ActiveRecord::Migration
  def up
  	create_table :lenders_term_states, :id => false do |t|
   		t.integer "lender_id"
   		t.integer "term_state_id" 		
  	end
  	add_index :lenders_term_states, ["lender_id", "term_state_id"]  	 
  	
  end

  def down
  	drop_table :lenders_term_states
  end
end
