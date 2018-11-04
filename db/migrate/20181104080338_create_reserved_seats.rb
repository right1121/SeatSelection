class CreateReservedSeats < ActiveRecord::Migration
  def change
    create_table :reserved_seats do |t|

      t.timestamps null: false
    end
  end
end
