class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.datetime :date, null: false 
      t.belongs_to :user, null: false, foreign_key: true
      t.string :game_name
      t.timestamps
    end
  end
end
