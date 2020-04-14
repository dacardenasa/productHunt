ActionMailer::Base.default_url_options[:host] = ENV["HOSTNAME"]

# General Settings
ActionMailer::Base.smtp_settings = {
  user_name: ENV['SENDGRID_USER_NAME'],
  password: ENV['SENDGRID_API_KEY'],
  domain: 'localhost',
  address: 'smtp.sendgrid.net',
  port: 587,
  authentication: :plain,
  enable_starttls_auto: true
}

