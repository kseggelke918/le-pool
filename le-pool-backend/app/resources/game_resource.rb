class GameResource < ApplicationResource
    belongs_to :devise_user
    attribute :devise_user_id, :integer_id
    attribute :game_name, :string
    many_to_many :players
    
end
