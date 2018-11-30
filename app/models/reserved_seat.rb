class ReservedSeat < ActiveRecord::Base
  has_many :seat_numbers, dependent: :destroy

  belongs_to :user
  belongs_to :movie
  belongs_to :movie_start_time

  validates :user_id, presence: true
  validates :movie_id, presence: true

  #複数の予約座席情報の配列を一つの配列にする
  def set_seat_number(seat_number_array)
    seat_number_array.each_with_index do |seat_number, i|
      case i
      when 1 then self.seat_number_1 = seat_number
      when 2 then self.seat_number_2 = seat_number
      when 3 then self.seat_number_3 = seat_number
      when 4 then self.seat_number_4 = seat_number
      when 5 then self.seat_number_5 = seat_number
      end
    end
    # buried_seats = movie.reserved_seats #映画の座席予約情報を呼び出す
    # buried_seats_array = []
    # buried_seats.each do |buried_seat|
    #   if buried_seat.seat_number_array.present?
    #     buried_seat.seat_number_array.each do |seat|
    #       buried_seats_array << seat if seat.present?
    #     end
    #   end
    # end
    # buried_seats_array
  end
end
