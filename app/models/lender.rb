class Lender < ActiveRecord::Base
    # attr_accessible :sniff_id, :ranking
  
    belongs_to :sniff
    has_and_belongs_to_many :states
    
    scope :by_top_rank, order("lenders.ranking DESC")
    scope :by_low_cost, order("lenders.cost ASC")
    scope :by_low_apr, order("lenders.apr ASC")

    def self.sniff_level(level)
		where("sniff_id <= ?", level)
    end
	
    def self.lender_type(type)
    	where("lender_type = ?", type)
    end
    
    def self.rank_level(level)
    	where("ranking >= ?", level)
    end
end
