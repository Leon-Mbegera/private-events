class EventsController < ApplicationController

  def index
    @events = Event.all
  end
  
  def create
    @event = current_user.events.build(event_params)

    if @event.save
      redirect_to @event
    else
      render :new
    end
  end

  private
    def event_params
      params.require(:article).permit(:event_name, :event_location, :event_date)
    end
end
