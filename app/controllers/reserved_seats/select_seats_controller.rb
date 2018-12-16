class ReservedSeats::SelectSeatsController < ApplicationController
  def update
    @user = User.find(2) #仮実装。current_userにする
    @movie = Movie.find(params[:id])
    @movie_start_time = @movie.movie_start_times.find_by(id: params[:movie_start_time][:movie_start_time_id])
    @reserved_seat = @movie_start_time.reserved_seats.new(movie_id: params[:id], user_id: @user.id)
  end
end
