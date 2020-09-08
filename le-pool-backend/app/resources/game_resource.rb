class GameResource < ApplicationResource
    belongs_to :user
    attribute :user_id, :integer_id
    many_to_many :players
    
end
