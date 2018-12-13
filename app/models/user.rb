class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :reseived_movies,  through: :reserved_seats,   source: :movie
  has_many :reserved_seats,   dependent: :destroy

end
