class MovieStartTime < ActiveRecord::Base
  has_many :reserved_seats, dependent: :destroy

  belongs_to :movie
end
