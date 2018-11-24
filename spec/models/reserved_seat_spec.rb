require 'rails_helper'

RSpec.describe ReservedSeat, type: :model do
  example '座席を指定していないと無効な状態であること'

  example '座席を５つ以上指定していると無効な状態であること'
end
