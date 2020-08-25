class CreateRosterEntries < ActiveRecord::Migration[6.0]
  def change
      create_table :roster_entries do |t|
        t.integer :game_id
        t.integer :player_id
        t.integer :score_id
        t.timestamps
      end 
  end
end
