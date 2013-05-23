class MoviesController < ApplicationController

  def destroy
    m = Movie.find_by_id(params["id"])
    m.destroy
    redirect_to "/movies"
  end

  def edit
    @movie = Movie.find_by_id(params["id"])
  end

  def update
    @movie = Movie.find_by_id(params["id"])
    @movie.title = params[:title]
    @movie.year = params[:year]
    @movie.save
    redirect_to "/movies"
  end

  def create
    @movie = Movie.new
    @movie.title = params[:title]
    @movie.year = params[:year]
    if @movie.save
      redirect_to "/movies"
    else
      redirect_to "/movies/new", notice: "Nice try."
    end
  end

  def filter
    search_term = params["term"]
    @movies = Movie.where("title LIKE ? OR year = ?", "%#{search_term}%", search_term)
    render 'index'
  end

  def index
    sort_direction = params["sortby"]
    if sort_direction == nil
      sort_direction = "asc"
    end
    @movies = Movie.order("title #{sort_direction}").limit(100)
  end

  def show
    @movie = Movie.find_by_id(params["id"])
    session["last_movie_id"] = @movie.id

    @average_rating = @movie.reviews.average(:rating)
  end

  def new
    if session["user_id"].blank?
      redirect_to "/movies", notice: "Please sign in first."
    end
  end
end
