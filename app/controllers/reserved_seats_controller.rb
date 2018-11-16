class ReservedSeatsController < ApplicationController
  def index
  end
  
  def new
    @reserved_seat = ReservedSeat.new
  end

  
end
