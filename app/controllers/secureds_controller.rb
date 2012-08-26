class SecuredsController < ApplicationController
  
  layout 'public'
  
  before_filter :set_tracking

  def index
  	@duration = 25.0 #number of months someone keeps the secured car, ad decimal so not integer
  	@pur_balance =  400.0 #revolving purchase balance
  	@cash_balance = 100.0 #cash balance balance
  	@secureds = Secured.live.by_top_rank
  	@page = "0005" #sets page for tracking to 'secured-cards'
  end

end
