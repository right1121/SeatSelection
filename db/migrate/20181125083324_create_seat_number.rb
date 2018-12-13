class CreateSeatNumber < ActiveRecord::Migration
  def change
    create_table :seat_numbers do |t|
      t.references :reserved_seat, index: true, foreign_key: true
      t.string :seat_number_1
      t.string :seat_number_2
      t.string :seat_number_3
      t.string :seat_number_4
      t.string :seat_number_5

      t.timestamps null: false
    end
  end
end
