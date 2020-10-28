class Game < ApplicationRecord
    belongs_to :devise_user 

    has_many :roster_entries
    has_many :players, through: :roster_entries
end
