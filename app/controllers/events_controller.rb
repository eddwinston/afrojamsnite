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
      redirect_to :action => 'index' #@event
    else
      @title = "Failed to create event"
      render :new
    end
  end
  
  def edit
    @title = "Edit event"
    @event = Event.find(params[:id])
  end
  
  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      flash[:success] = "Event updated successfully"
      redirect_to @event
    else
      @title = "Edit event"
      redirect_to :action => "edit"
    end
  end
  
  def show
    @event = Event.find(params[:id].to_i)
    @title = @event.title
    respond_to do |format|
      format.html
    end
  end
  
end
