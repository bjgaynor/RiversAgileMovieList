class CreateMovies < ActiveRecord::Migration[5.2]
  def change
    create_table :movies do |t|
      t.string     :name
      t.integer    :rating
      t.integer    :year_of_release
      t.string     :genre
      t.references :movie_list, foreign_key: true

      t.timestamps
    end
  end
end
