class InfosController < ApplicationController

  layout 'application'
	
  
  def welcome
    user = User.find_by_email('conway@xerpi.com')
    UserMailer.welcome_email(user).deliver
  end

end
