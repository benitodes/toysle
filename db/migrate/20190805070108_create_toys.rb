class CreateToys < ActiveRecord::Migration[5.2]
  def change
    create_table :toys do |t|
      t.string :name
      t.text :description
      t.string :address
      t.integer :daily_price
      t.integer :max_age
      t.references :theme, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
