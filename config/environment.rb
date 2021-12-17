# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!


#config.action_mailer.delivery_method = :smtp

#config.action_mailer.default_url_options = { host: 'http://localhost:3000/' }


ActionMailer::Base.smtp_settings = {
  user_name: "matesmakings@gmail.com",
  password: "100code4ever",
  address: 'smtp.gmail.com',
  port: 587,
  authentication:  :plain,
  enable_starttls_auto: true
}

