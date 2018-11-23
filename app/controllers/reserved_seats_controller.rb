class ReservedSeatsController < ApplicationController
  def index
  end
  
  def new
    @user = User.find(2) #仮実装。current_userにする
    @movie = Movie.find(params[:movie_id])
    @reserved_seat = @movie.reserved_seats.new(user_id: @user.id)
    @buried_seats = @movie.reserved_seats #映画の座席予約情報を呼び出す
    @buried_seats_array = @reserved_seat.seats(@buried_seats) #複数の予約座席情報の配列を一つの配列にする
  end

  def create
    @user = User.find(2) #仮実装。current_userにする
    @reserved_seat = @user.reserved_seats.new(reserved_seat_params)
    @reserved_seat.seat_number = 1 #あとで削除する
    if @reserved_seat.save
      redirect_to movies_path
    else
      movie = Movie.find(params[:movie_id])
      redirect_to new_movie_reserved_seat_path(movie.id), alert: "座席を選択してください"
    end
  end

  private

  def reserved_seat_params
    params.require(:reserved_seat).permit(
      :seat_number,
      :movie_id,
      :user_id,
      seat_number_array: [],
    )
  end
end
