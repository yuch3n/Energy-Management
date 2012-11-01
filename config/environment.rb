# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
EnegeryManagement::Application.initialize!
EnegeryManagement::Application.configure do
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  :address              => "smtp.sendgrid.com",
  :port                 => '587',
  :domain               => 'heroku.com',
  :user_name      => ENV['SENDGRID_USERNAME'],
  :password       => ENV['SENDGRID_PASSWORD'],
  :authentication       => 'plain',
}
end