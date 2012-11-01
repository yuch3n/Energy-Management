ActionMailer::Base.smtp_settings = {
  :address        => 'smtp.sendgrid.net',
  :port           => '587',
  :authentication => :plain,
  :user_name      => "app8427599@heroku.com",
  :password       => "ulhuqeff",
  :domain         => 'heroku.com'
}
ActionMailer::Base.delivery_method = :smtp