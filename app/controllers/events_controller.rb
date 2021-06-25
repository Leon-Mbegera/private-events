class EventsController < ApplicationController

  def index
    @events = Event.all
  end
  
  def create
    @event = current_user.events.build(event_params)
  end
end
