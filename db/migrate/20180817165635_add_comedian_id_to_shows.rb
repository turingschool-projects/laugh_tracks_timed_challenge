class AddComedianIdToShows < ActiveRecord::Migration[5.1]
  def change
    add_column :name, :age, :shows
  end
end
