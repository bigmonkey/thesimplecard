class LendersController < ApplicationController
  
  layout 'public'
  
  def index
	@lenders = Lender.order("lenders.name ASC") 
	@ranked = Lender.by_top_rank
  end
  
  def criteria
  	@lenders = Lender.by_top_rank
  end
  	
  def filter
    @criteria =  Lender.new
    @criteria.sniff_id = params[:lender][:sniff_id]
    @criteria.ranking = params[:lender][:ranking]
    @criteria.lender_type = params[:lender][:lender_type]
    @state = State.find(params[:state][:id])
    @select_lenders = @state.lenders
  	puts "lender level is #{@criteria.ranking}, sniff is #{@criteria.sniff.sniff_desc}, lender type is #{@criteria.lender_type} and state is #{@state.state}"
    @lenders = @select_lenders.by_top_rank.sniff_level(@criteria.sniff_id).rank_level(@criteria.ranking).lender_type(@criteria.lender_type)
  end
  

    
end
