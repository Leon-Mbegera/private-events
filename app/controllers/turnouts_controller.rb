class TurnoutsController < ApplicationController

  def new
    @turnouts = Turnout.new
  end

  def create
    @turnout = Turnout.new(turnout_params)

    if @turnout.save
      redirect_to @turnout
    else
      render :new
    end
  end

  def show
    @turnout = Turnout.find(params[:id])
    @event = Event.find(@turnout.event_id)
  end

  private
  def turnout_params
    params.require(:turnout).permit(:attendee_id, :event_id)
  end
end
