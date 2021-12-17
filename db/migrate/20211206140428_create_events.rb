class CreateEvents < ActiveRecord::Migration[5.2]
  def change
    create_table :events do |t|

      t.string :title
      t.string :description
      t.string :plateform
      t.integer :start_time_hours
      t.integer :start_time_min
      t.string :game_name

      t.date :start_date

      t.timestamps
    end
  end
end
