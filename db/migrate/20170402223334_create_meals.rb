class CreateMeals < ActiveRecord::Migration[5.0]
  def change
    create_table :meals do |t|
      t.string :name
      t.string :ingredients
      t.string :recipe
      t.integer :day_id

      t.timestamps
    end
  end
end
