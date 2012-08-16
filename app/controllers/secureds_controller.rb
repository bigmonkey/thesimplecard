class SecuredsController < ApplicationController
  
  layout 'public'
  
  before_filter :set_tracking

  def index
  	@secureds = Secured.by_top_rank
  end

end
