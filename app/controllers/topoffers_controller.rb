class TopoffersController < ApplicationController
# use this controller for base landing page layout lp

  layout 'lp'
  
  before_filter :set_tracking

  def index
  	render ('badcredit')
  end	

  def badcredit
  	@page="0012"
  end

  def prepaid
  	@page="0010"
  end
  	
  def prepaid_b
    @page="0013"
  end
  def nfl
    @page="0011"
  end
end
