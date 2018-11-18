class AddColumnSeatNumberArrayToReservedSeats < ActiveRecord::Migration
  def change
    add_column :reserved_seats, :seat_number_array, :string, array: true ,null: false
  end
end
