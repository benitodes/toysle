class AddCoordinatesToToys < ActiveRecord::Migration[5.2]
  def change
    add_column :toys, :latitude, :float
    add_column :toys, :longitude, :float
  end
end
