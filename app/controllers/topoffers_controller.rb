class TopoffersController < ApplicationController

  layout 'lp'
  
  before_filter :set_tracking

  def index
  	render ('badcredit')
  end	

  def badcredit
  	@page="0010"
  end

  def prepaid
  	@page="0010"
  end
  	
end
