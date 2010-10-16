class EventsController < ApplicationController
  
  before_filter :authenticate, :only => [:new, :edit, :update]
  
  def index
    @title = "Events"
    #@event = Event.where(["start_time >= ?", Date.today])
    #if @event
    #  render :template => 'events/upcoming'
    #else
      @events = Event.all
    #end
    
    respond_to do |format|
      format.html
    end
  end
  
  def new
    @title = "Create new event"
    @event = Event.new
    
    respond_to do |format|
      format.html
    end
  end
  
  def create
    @event = Event.new(params[:event])
    if @event.save
      flash[:success] = "Created event successfully"
      redirect_to :index #@event
    else
      @title = "Failed to create event"
      render :new
    end
  end
  
  def edit
    @title = "Edit event"
    return "hello"
  end
  
  def update
    
  end
  
  def show
    @event = Event.find(params[:id])
    @title = @event.title
    respond_to do |format|
      format.html
    end
  end
  
end
