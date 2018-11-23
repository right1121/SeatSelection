class ReservedSeat < ActiveRecord::Base
  belongs_to :user
  belongs_to :movie

  validates :seat_number_array, presence: true

  #複数の予約座席情報の配列を一つの配列にする
  def seats(buried_seats)
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
