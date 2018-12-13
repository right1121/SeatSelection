class ReservedSeat < ActiveRecord::Base
  has_many :seat_numbers, dependent: :destroy

  belongs_to :user
  belongs_to :movie
  belongs_to :movie_start_time

  validates :user_id, presence: true
  validates :movie_id, presence: true
  validates :movie_start_time, presence: true
  validates :seat_number_1, presence: true

  # 座席情報を各seat_numberカラムに追加する
  def set_seat_number(seat_number_array)
    seat_number_array.each_with_index do |seat_number, i|
      case i
      when 0 then self.seat_number_1 = seat_number
      when 1 then self.seat_number_2 = seat_number
      when 2 then self.seat_number_3 = seat_number
      when 3 then self.seat_number_4 = seat_number
      when 4 then self.seat_number_5 = seat_number
      end
    end
  end
end
