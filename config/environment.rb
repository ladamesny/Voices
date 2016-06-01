# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
Rails.application.initialize!

ActionMailer::Base.smtp_settings = {
  :address => 'smtp.mailgun.org',
  :port => '587',
  :authentication => :plain,
  :user_name => ENV['MAILGUN_SMTP_LOGIN'],
  :password => ENV['MAILGUN_SMTP_PASSWORD'],
  :domain => 'heroku.com',
  :enable_starttls_auto => true
}