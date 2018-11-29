class DropTableSeatNumber < ActiveRecord::Migration
  def change
    drop_table :seat_numbers
  end
end
