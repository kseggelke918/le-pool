class Roster < ActiveRecord::Migration[6.0]
  def change
      create_table :roster do |t|
        t.integer :game_id
        t.integer :player_id
        t.integer :game_score, default: 0
        t.integer :golf_score, default: 0
        t.timestamps
      end 
  end
end
