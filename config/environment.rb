# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Pdh::Application.initialize!

ActionMailer::Base.smtp_settings = {
  :user_name      => ENV['EMAIL_USERNAME'],
  :password       => ENV['EMAIL_PASSWORD'],
  :domain         => 'thesimplecard.com',
  :address => 'smtpout.secureserver.net',
  :port => 80,
  :authentication => :plain,
}