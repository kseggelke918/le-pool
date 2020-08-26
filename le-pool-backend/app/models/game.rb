class Game < ApplicationRecord
    belongs_to :user 

    has_many :roster_entries
    has_many :players, through: :roster_entries
end
