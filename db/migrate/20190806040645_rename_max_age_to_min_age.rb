class RenameMaxAgeToMinAge < ActiveRecord::Migration[5.2]
  def change
    rename_column :toys, :max_age, :min_age
  end
end
