class CreateRosterEntries < ActiveRecord::Migration[6.0]
  def change
      create_table :roster_entries do |t|
        t.belongs_to :game
        t.belongs_to :player
        t.datetime :game_date, null: false
        t.timestamps
      end 
  end
end
