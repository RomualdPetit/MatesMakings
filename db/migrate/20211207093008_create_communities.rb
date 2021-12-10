class CreateCommunities < ActiveRecord::Migration[5.2]
  def change
    create_table :communities do |t|
      
      t.belongs_to :user, index: true
      t.belongs_to :community, index: true

      t.timestamps
    end
  end
end
