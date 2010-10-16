class PagesController < ApplicationController
  
  def index
    @title = "Home"
    @event = Event.where('start_time >= ?', Date.today)
  end
  
  def about
    @title = "About"
    @title = "About Afro Jams Nite"
  end
end
