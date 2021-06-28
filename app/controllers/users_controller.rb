class UsersController < ApplicationController
  def show
    @events = current_user.events.all
    @created_events = current_user.events
    @past_events = current_user.attended_events.previous
  end
end
