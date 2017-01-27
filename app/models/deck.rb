class Deck < ActiveRecord::Base
  belongs_to :user
  has_many :rounds
  has_many :cards
  has_many :guesses, through: :rounds
end
