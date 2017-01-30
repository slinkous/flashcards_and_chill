class Guess < ActiveRecord::Base
  belongs_to :round
  belongs_to :card
  has_one :user, through: :round

  def correct?(user_answer)
  	user_answer.downcase == self.card.answer.downcase
  end
end
