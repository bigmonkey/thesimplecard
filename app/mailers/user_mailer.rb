class UserMailer < ActionMailer::Base
  default from: "contact@thesimplecard.com"

  def welcome_email(user)
  	@user = user
  	mail(to: @user.email, subject: "Welcome to The Simple Card Today")
  end

end
