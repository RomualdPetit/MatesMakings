<<<<<<< HEAD
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
=======
class CreateCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :communities do |t|
      
      t.belongs_to :user, index: true
      t.belongs_to :game, index: true

      t.timestamps
    end
  end
end
>>>>>>> 38a6533f66c2c704ec6304ba52bd1a98fd852897
