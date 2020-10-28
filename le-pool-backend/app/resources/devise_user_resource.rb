class DeviseUserResource < ApplicationResource
    attribute :name, :string
    attribute :email, :string
    has_many :games
end
