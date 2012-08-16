class SecuredsController < ApplicationController
  
  layout 'public'
  
  before_filter :set_tracking

  def index
  	@secureds = Secured.by_top_rank
  	@page = "0005" #sets page for tracking to 'secured-cards'
  end

end
