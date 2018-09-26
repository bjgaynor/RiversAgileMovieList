class ChangeYearOfReleaseToBeStringInMovie < ActiveRecord::Migration[5.2]
  def change
    change_column :movies, :year_of_release, :string
  end
end
