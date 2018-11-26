class ReservedSeatsController < ApplicationController
  def index
  end
  
  def new
    @user = User.find(2) #仮実装。current_userにする
    @movie = Movie.find(params[:movie_id])
    @reserved_seat = @movie.reserved_seats.new(user_id: @user.id)
    # @buried_seats_array =  @reserved_seat.set_buried_seats(@movie) #複数の予約座席情報の配列を一つの配列にする
  end

  def create
    @user = User.find(2) #仮実装。current_userにする
    @reserved_seat = @user.reserved_seats.new(reserved_seat_params)
    @reserved_seat.seat_number = 1 #あとで削除する
    if @reserved_seat.save
      redirect_to movies_path
    else
      @movie = Movie.find(params[:movie_id])
      @buried_seats_array = @reserved_seat.set_buried_seats(@movie)
      render :new, {movie: @movie, reserved_seat: @reserved_seat}
    end
  end

  private

  def reserved_seat_params
    params.require(:reserved_seat).permit(
      :seat_number,
      :movie_id,
      :user_id,
      :movie_start_time_id
    )
  end
end
