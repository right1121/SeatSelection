class RemoveSeatNumberFromReservedSeat < ActiveRecord::Migration
  def change
    remove_column :reserved_seats, :seat_number
    remove_column :reserved_seats, :seat_number_array
  end
end
