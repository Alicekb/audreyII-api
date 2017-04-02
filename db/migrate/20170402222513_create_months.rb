class CreateMonths < ActiveRecord::Migration[5.0]
  def change
    create_table :months do |t|
      t.string :month_name
      t.integer :calendar_id

      t.timestamps
    end
  end
end
