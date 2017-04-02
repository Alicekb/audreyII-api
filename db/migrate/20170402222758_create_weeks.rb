class CreateWeeks < ActiveRecord::Migration[5.0]
  def change
    create_table :weeks do |t|
      t.string :week_number
      t.integer :month_id

      t.timestamps
    end
  end
end
