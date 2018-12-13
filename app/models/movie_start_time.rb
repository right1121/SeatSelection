class MovieStartTime < ActiveRecord::Base
  has_many :reserved_seats, dependent: :destroy

  belongs_to :movie

  # def self.pick_date(date)
  #   self.where(start_time: )
  # end
end
