class Movie < ActiveRecord::Base
  has_many :was_reserved_users,  through: :reserved_seats,   source: :user
  has_many :was_reseived_users,  through: :reserved_seats,   source: :user
  has_many :reserved_seats,   dependent: :destroy
end
