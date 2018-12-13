class MoviesController < ApplicationController
  before_action :set_movie, only: [:show]

  def index
    @movies = Movie.all
  end

  def show
    @movie_start_times = @movie.movie_start_times
  end

  private

  def set_movie
    @movie = Movie.find(params[:id])
  end

  def movie_params
    params.require(:movie).permit(
      :title,
      :start_date,
      :end_date,
      :screen_time,
      :start_date
    )
  end

  def movie_start_time_params
    params.require(:movie_start_time).permit(:start_time)
  end
end
