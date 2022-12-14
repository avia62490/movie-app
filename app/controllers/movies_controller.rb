class MoviesController < ApplicationController

  def index
    movie = Movie.all
    render json: movie.as_json
  end

  def show
    movie = Movie.find_by(id: params[:id])
    render json: movie.as_json
  end
  
  def create
    movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director]
    )
    movie.save
    render json: movie.as_json
  end

  def update
    movie = Movie.find_by(id: params[:id])
    movie.title = params[:title] || movie.title
    movie.year = params[:year] || movie.year
    movie.plot = params[:plot] || movie.plot
    movie.director = params[:director] || movie.director
    movie.english = params[:english] || movie.english
    movie.save
    render json: movie.as_json
  end
  
  def delete
    movie = Movie.find_by(id: params[:id])
    movie.destroy
    render json: {message: "Movie has been deleted"}
  end

end
