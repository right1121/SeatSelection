class AddColumnSeatNumberToReservedSeat < ActiveRecord::Migration
  def change
    add_column :reserved_seats, :seat_number_1, :string
    add_column :reserved_seats, :seat_number_2, :string
    add_column :reserved_seats, :seat_number_3, :string
    add_column :reserved_seats, :seat_number_4, :string
    add_column :reserved_seats, :seat_number_5, :string
  end
end
