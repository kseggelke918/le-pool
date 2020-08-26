class Player < ApplicationRecord
    has_many :roster_entries
    has_many :games, through: :roster_entries
    
    validates :name, presence: true 
 
end
