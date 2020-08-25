class Player < ApplicationRecord
    belongs_to :roster_entry
    has_many :games, through: :roster_entry
    validates :name, presence: true 
 
end
