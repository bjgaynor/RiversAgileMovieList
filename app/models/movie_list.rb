class MovieList < ApplicationRecord
  belongs_to :user
  has_many :movies

  def number_of_movies
    # ***
  end

  def average_rating
    # ***
  end

end
