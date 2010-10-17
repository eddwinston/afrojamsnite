ActionMailer::Base.smtp_settings = {
  :address              => "smtp.gmail.com",
  :port                 => 587,
  :domain               => "afrojamsnite.com",
  :user_name            => "omorose@afrojamsnite.com",
  :password             => "kissme",
  :authentication       => "plain",
  :enable_starttls_auto => true
}