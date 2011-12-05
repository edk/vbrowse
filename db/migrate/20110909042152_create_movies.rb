class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :filename
      t.string :path
      t.string :container
      t.integer :category_id
      # imdb attributes:
      # Title, Director, Writer, Actors, Plot, Poster, Runtime, Rating, Votes, Genre, Released, Year, Rated, ID (IMDb ID)
      t.string :title, :director, :writer, :runtime, :rating, :released, :year, :rated, :imdbid
      t.text :plot
      # has_many: actors, posters, reviews
      t.timestamps
    end
  end
end
