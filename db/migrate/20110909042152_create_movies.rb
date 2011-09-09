class CreateMovies < ActiveRecord::Migration
  def change
    create_table :movies do |t|
      t.string :filename
      t.string :path
      t.string :container
      t.integer :category_id

      t.timestamps
    end
  end
end
