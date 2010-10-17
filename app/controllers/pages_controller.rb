class PagesController < ApplicationController
  
  def index
    @current_menu = 'home'
    @title = "Home"
    @event = Event.where('start_time >= ?', Date.today)
  end
  
  def about
    @current_menu = 'about'
    @title = "About"
    @title = "About Afro Jams Nite"
  end
end
