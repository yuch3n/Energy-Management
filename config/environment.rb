# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
EnegeryManagement::Application.initialize!
EnegeryManagement::Application.configure do
config.action_mailer.delivery_method = :smtp
config.action_mailer.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => 'gmail.com',
  :user_name            => 'mypowerberkeley@gmail.com',
  :password             => 'mypower169',
  :authentication       => 'plain',
  :enable_starttls_auto => true  }
end
