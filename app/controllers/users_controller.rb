class UsersController < ApplicationController

  def show
    @events = current_user.events.all
  end
end
