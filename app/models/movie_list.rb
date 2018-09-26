class MovieList < ApplicationRecord
  belongs_to :user
  has_many :movies

  def number_of_movies
    movies.count
  end

  def average_rating
    # *** map or collect movies ratings and average them
  end

end
