class FeedbackMailer < ActionMailer::Base
  default :from => "omorose@afrojamsnite.com"
  
  def feedback_mail(feedback)
    mail(:to => feedback.email, :subject => "Feedback")    
  end
end
