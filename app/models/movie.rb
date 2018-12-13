class Movie < ActiveRecord::Base
  has_many :was_reserved_users, through: :reserved_seats, source: :user
  has_many :reserved_seats, dependent: :destroy
  has_many :movie_start_times, dependent: :destroy
end
