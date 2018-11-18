class ReservedSeatsController < ApplicationController
  def index
  end
  
  def new
    @movie = Movie.find(params[:movie_id])
    @reserved_seat = ReservedSeat.new
    @buried_seats = ReservedSeat.where(movie_id: params[:movie_id]) #指定された映画の座席予約情報を呼び出す
  end

  def create
    @user = User.find(1) #仮実装。current_userにする
    @reserved_seat = @user.reserved_seats.new(reserved_seat_params)
    @reserved_seat.movie_id = params[:movie_id]
    if @reserved_seat.save
      redirect_to movies_path
    else
      render :new
    end
  end

  def reserved_seat_params
    params.require(:reserved_seat).permit(
      :seat_number,
      :movie_id,
      :user_id
    )
  end
end
