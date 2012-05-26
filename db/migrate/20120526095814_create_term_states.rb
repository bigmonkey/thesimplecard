class CreateTermStates < ActiveRecord::Migration
  def change
    create_table :term_states do |t|
	  t.string "state_abbr", :limit => 2
	  t.string "state", :limit =>15
      t.timestamps
    end
  end
end
