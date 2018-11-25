class CreateMovieStartTime < ActiveRecord::Migration
  def change
    create_table :movie_start_times do |t|
      t.date        :start_time,    null: false
      t.references  :movie,         null: false
      t.timestamps null: false
    end
    add_foreign_key :movie_start_times, :movies
  end
end
