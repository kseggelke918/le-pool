class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name
      t.integer :golf_score
      t.integer :game_score
      t.integer :game_id

      t.timestamps
    end
  end
end
