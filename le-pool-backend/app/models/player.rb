class Player < ApplicationRecord
    belongs_to :game
    has_many :games 
    validates :name, presence: true 
 
end
