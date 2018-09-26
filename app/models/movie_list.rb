class MovieList < ApplicationRecord
  has_many :movies
  belongs_to :user

  def number_of_movies
    movies.count
  end

  def average_rating
    movies.average("rating")
  end

end
