class ApplicationController < ActionController::Base
  protect_from_forgery

  protected

  def set_tracking
  	!params[:src].nil? ? session[:src] = params[:src] : session[:src] = session[:src]
  end

   
end
