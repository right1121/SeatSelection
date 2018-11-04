class CreateMovies < ActiveRecord::Migration
    def change
        create_table :movies do |t|
            t.string        :title              ,null: false
            t.date          :start_date
            t.date          :end_date
            t.time          :start_time_array   ,array: true
            t.integer       :screen_time

            t.timestamps    null: false
        end
        add_index:movies, [:title]
        add_index:movies, [:start_date]
        add_index:movies, [:start_time_array]
    end
end
