class State < ActiveRecord::Base
  # attr_accessible :title, :body
  
  has_and_belongs_to_many :lenders
  
    def self.select_state_(id)
		where("state_id = ?", id)
    end
      
end
