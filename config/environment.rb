# Load the rails application.
require File.expand_path('../application', __FILE__)

# Initialize the rails application.
Bks::Application.initialize!

Bks::Application.configure do
  config.action_mailer.delivery_method = :smtp

  config.action_mailer.smtp_settings = {
    address:        'mail.messagingengine.com',
    port:           587,
    authentication: 'plain',
    user_name:      'adamvert@fastmail.fm',
    password:       '04tpw/R4w1t',
    enable_starttls_auto: true
  }
end