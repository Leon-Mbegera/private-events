class TurnoutsController < ApplicationController

  def new
    @turnounts = Turnout.new
  end

  
end
