class PlayerResource < ApplicationResource
  attribute :name, :string
 many_to_many :games
end
