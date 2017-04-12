class CreateIngredients < ActiveRecord::Migration[5.0]
  def change
    create_table :ingredients do |t|
      t.string :name
      t.integer :meal_id
      t.string :category

      t.timestamps
    end
  end
end
