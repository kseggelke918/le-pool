class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t| 
      t.string :game_name
      t.belongs_to :user
      t.timestamps
    end
  end
end
