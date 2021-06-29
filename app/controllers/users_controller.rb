class UsersController < ApplicationController
  def show
    @created_events = current_user.created_events
    @past_events = current_user.attended_events.past
    @upcoming_events = current_user.attended_events.upcoming
  end
end
