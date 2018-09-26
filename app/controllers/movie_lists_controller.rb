class MovieListsController < ApplicationController
  before_action :set_movie_list, only: [:show, :edit, :update, :destroy]

  # GET /movie_lists
  def index
    @movie_lists = MovieList.all
  end

  # GET /movie_lists/1
  def show
  end

  # GET /movie_lists/new
  def new
    @movie_list = MovieList.new
  end

  # GET /movie_lists/1/edit
  def edit
  end

  # POST /movie_lists
  def create
    @movie_list = MovieList.new(movie_list_params)

    if @movie_list.save
      redirect_to @movie_list, notice: 'Movie list was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /movie_lists/1
  def update
    if @movie_list.update(movie_list_params)
      redirect_to @movie_list, notice: 'Movie list was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /movie_lists/1
  def destroy
    @movie_list.destroy
    redirect_to movie_lists_url, notice: 'Movie list was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_movie_list
      @movie_list = MovieList.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def movie_list_params
      params.require(:movie_list).permit(:name, :user_id)
    end
end
