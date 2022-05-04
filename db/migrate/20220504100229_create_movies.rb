class CreateMovies < ActiveRecord::Migration[7.0]
  def change
    create_table :movies do |t|
      t.string :name, :genre, :director
      t.integer :year, :my_rating
      t.float :allocine_rating
      t.text :synopsis
      t.boolean :already_seen
      t.timestamps
    end
  end
end