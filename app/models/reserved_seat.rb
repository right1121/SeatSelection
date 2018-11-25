class ReservedSeat < ActiveRecord::Base
  has_many :seat_numbers, dependent: :destroy

  belongs_to :user
  belongs_to :movie
  belongs_to :movie_start_time

  validates :seat_number_array, presence: true, length: {maximum: 5}
  validates :user_id, presence: true
  validates :movie_id, presence: true

  #複数の予約座席情報の配列を一つの配列にする
  def set_buried_seats(movie)
    buried_seats = movie.reserved_seats #映画の座席予約情報を呼び出す
    buried_seats_array = []
    buried_seats.each do |buried_seat|
      if buried_seat.seat_number_array.present?
        buried_seat.seat_number_array.each do |seat|
          buried_seats_array << seat if seat.present?
        end
      end
    end
    buried_seats_array
  end
end
