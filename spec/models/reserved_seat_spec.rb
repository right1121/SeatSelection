require 'rails_helper'

RSpec.describe ReservedSeat, type: :model do

  example '座席の位置情報、映画id、ユーザーidがあれば有効な状態であること' do
    reserved_seat = ReservedSeat.new(
      seat_number: 1,
      movie_id: 1,
      user_id: 1,
      seat_number_array: ["A-2"],
    )
    expect(reserved_seat).to be_valid
  end

  example '座席を指定していないと無効な状態であること' do
    reserved_seat = ReservedSeat.new(
      seat_number: 1,
      movie_id: 1,
      user_id: 1,
    )
    reserved_seat.valid?
    expect(reserved_seat.errors[:seat_number_array]).to include("translation missing: ja.activerecord.errors.models.reserved_seat.attributes.seat_number_array.blank")
  end

  example '座席を５つ以上指定していると無効な状態であること' do
    reserved_seat = ReservedSeat.new(
      seat_number: 1,
      movie_id: 1,
      user_id: 1,
      seat_number_array: ["A-1", "A-2", "A-3", "C-3", "E-5", "A-6"]
    )
    reserved_seat.valid?
    expect(reserved_seat.errors[:seat_number_array]).to include("translation missing: ja.activerecord.errors.models.reserved_seat.attributes.seat_number_array.too_long")
  end
end
