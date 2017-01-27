class User < ActiveRecord::Base
  has_many :decks
  has_many :rounds
  has_many :guesses, through: :rounds

  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password_hash, presence: true
end
