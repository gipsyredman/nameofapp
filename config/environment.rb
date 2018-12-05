# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

#Enable ActionMailer to use SendGrid plugin to send emails from Heroku
ActionMailer::Base.smtp_settings = {
  address: 'smtp.sendgrid.net',
  port: '587',
  authentication: :plain,
  user_name: ENV['app113708785@heroku.com'],
  password: ENV['H@t3r@d3'],
  domain: 'heroku.com',
  enable_starttls_auto: true
}
