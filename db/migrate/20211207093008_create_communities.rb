class CreateCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :communities do |t|

      
      t.references :user, null: false, foreign_key: true
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end

    add_index :communities, [:user_id, :game_id], unique: true

  end
end
