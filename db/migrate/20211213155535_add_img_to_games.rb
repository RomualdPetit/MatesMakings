class AddImgToGames < ActiveRecord::Migration[5.2]
  def change
    add_column :games, :img_url, :string
  end
end
