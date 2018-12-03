class RemoveMovieStartTime < ActiveRecord::Migration
  def change
    remove_column :movie_start_times, :start_time
  end
end
