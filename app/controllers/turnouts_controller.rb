class TurnoutsController < ApplicationController

  def new
    @turnouts = Turnout.new
  end

  def create
    @turnout = Turnout.new(turnout_params)
  end

  private
  def turnout_params
    params.require(:turnout).permit(:attendee_id, :event_id)
  end
end
