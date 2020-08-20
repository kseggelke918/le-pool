class User < ApplicationRecord
    has_many :games
    validates :name, :email, presence: true 
    validates :email, uniqueness: true 
end
