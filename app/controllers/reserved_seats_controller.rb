class ReservedSeatsController < ApplicationController
  def select_seat
    @user = User.find(2) #仮実装。current_userにする
    @movie = Movie.find(params[:id])
    @movie_start_time = @movie.movie_start_times.find_by(id: params[:movie_start_time][:movie_start_time_id])
    @reserved_seat = @movie_start_time.reserved_seats.new(movie_id: params[:id], user_id: @user.id)
  end

  def create
    @user = User.find(2) #仮実装。current_userにする
    @reserved_seat = @user.reserved_seats.new(reserved_seat_params)
    seat_number_array = seat_number_array_params["seat_number_array"] #パラメータから配列の座席情報を受け取る
    @reserved_seat.set_seat_number(seat_number_array) # 座席情報を各seat_numberカラムに追加する
    if @reserved_seat.save
      redirect_to movies_path, notice: '予約しました。'
    else
      redirect_to movies_path(prams[:movie_id]), alert: '予約に失敗しました。'
    end
  end

  private

  def reserved_seat_params
    params.require(:reserved_seat).permit(
      :movie_id,
      :user_id,
      :movie_start_time_id,
      :seat_number_1,
      :seat_number_2,
      :seat_number_3,
      :seat_number_4,
      :seat_number_5
    )
  end

  def seat_number_array_params
    params.require(:reserved_seat).permit(seat_number_array: [])
  end
end
