class AddGameToEvent < ActiveRecord::Migration[5.2]
  def change
    add_reference :events, :game, foreign_key: true
  end
end
