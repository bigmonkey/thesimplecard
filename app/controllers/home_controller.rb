class HomeController < ApplicationController
	
	layout 'public'    

  before_filter :set_tracking
  	
  def index
  end
end
