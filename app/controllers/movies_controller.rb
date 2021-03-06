class MoviesController < ApplicationController
  def new
    @movie = Movie.new
  end

  def create
    @movie = Movie.new
    @movie.name = params[:movie][:name]
    @movie.year = params[:movie][:year]
    @movie.synopsis = params[:movie][:synopsis]

if @movie.save
  redirect_to root_path
else
  render new_movie_path
end

  end
end
