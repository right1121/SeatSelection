class ReaddStartTimeToMovieStartTime < ActiveRecord::Migration
  def change
    add_column :movie_start_times, :start_time, :timestamp
  end
end
