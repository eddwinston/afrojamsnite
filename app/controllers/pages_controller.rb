class PagesController < ApplicationController
  
  def index
    @current_menu = 'home'
    @title = "Home"
    @event = Event.where('start_time >= ?', Date.today)
  end
  
  def about
    @current_menu = 'about'
    @title = "About Afro Jams Nite"
    @feedback = Feedback.new
  end
  
  def feedback
    UserMailer.feedback_mail(feedback)
  end
end
