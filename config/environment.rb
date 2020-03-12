# frozen_string_literal: true

# Load the Rails application.
require File.expand_path('application', __dir__)

Depot::Application.configure do
  config.action_mailer.delivery_method = :smtp
  config.action_mailer.default_url_options = { :host => "localhost" }

  config.action_mailer.smtp_settings = {
    address: 'smtp.gmail.com',
    port: 587,
    domain: 'gmail.com',
    authentication: 'plain',
    user_name: 'shestakov7577412@gmail.com',
    password: 'nubochek21',
    enable_starttls_auto: true
  }
end

# Initialize the Rails application.
Depot::Application.initialize!
