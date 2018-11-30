class SeatNumbersController < ApplicationController
  def create
    
  end

  private
  
  def seat_number_params
    params.require(:seat_number).permit(
      :reserved_seat_number_id,
      :seat_number_1,
      :seat_number_2,
      :seat_number_3,
      :seat_number_4,
      :seat_number_5
    )
  end
end
