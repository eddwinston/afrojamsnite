class PagesController < ApplicationController
  
  def index
    @event = Event.where('start_time >= ?', Date.today)
  end
end
