class GameResource < ApplicationResource
    belongs_to :devise_user
    attribute :devise_user_id, :integer_id
    many_to_many :players
    
end
