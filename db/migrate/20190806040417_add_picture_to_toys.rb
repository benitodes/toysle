class AddPictureToToys < ActiveRecord::Migration[5.2]
  def change
    add_column :toys, :picture, :string
  end
end
