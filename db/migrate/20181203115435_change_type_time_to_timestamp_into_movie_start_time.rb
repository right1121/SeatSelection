class ChangeTypeTimeToTimestampIntoMovieStartTime < ActiveRecord::Migration
  def change
    def up
      change_column :movie_start_times, :start_time, :timestamp
    end
  
    def down
      change_column :movie_start_times, :start_time, :time
    end
  end
end
