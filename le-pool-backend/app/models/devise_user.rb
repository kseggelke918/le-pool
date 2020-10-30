class DeviseUser < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :games
  validates :name, :email, presence: true 
  validates :email, uniqueness: true
  validates :password, presence: true 
end
