class AddMovieStartTimeIdToReservedSeat < ActiveRecord::Migration
  def change
    add_reference :reserved_seats, :movie_start_time, foreign_key: true, null: false
  end
end
