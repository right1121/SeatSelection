class CreateReservedSeats < ActiveRecord::Migration
  def change
    create_table :reserved_seats do |t|
        t.string        :seat_number    ,null: false
        t.references    :movie          ,null: false
        t.references    :user           ,null: false
      t.timestamps null: false
    end
    add_foreign_key :reserved_seats, :movies
    add_foreign_key :reserved_seats, :users
  end
end
