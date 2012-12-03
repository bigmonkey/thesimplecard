class TopoffersController < ApplicationController

  layout 'lp'
  
  before_filter :set_tracking

  def index
  	render ('prepaid')
  end	

  def prepaid
  	@page="0010"
  end
end
