class AddCaloriesToMeals < ActiveRecord::Migration[5.0]
  def change
    add_column :meals, :calories, :integer
  end
end
