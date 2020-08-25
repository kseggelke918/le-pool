class Game < ApplicationRecord
    belongs_to :user 
    belongs_to :roster_entry
    has_many :players, through: :roster_entry
end
