class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.string :day_name
      t.integer :week_id

      t.timestamps
    end
  end
end
