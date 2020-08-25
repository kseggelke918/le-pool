class RosterEntry < ApplicationRecord
    has_many :players
    has_many :games
    
end