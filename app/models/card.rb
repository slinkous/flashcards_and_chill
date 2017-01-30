class Card < ActiveRecord::Base
  belongs_to :deck
  has_many :guesses
  validates :question, presence: true
  validates :answer, presence: true

	def show
		if self.flipped 
			return self.answer
		else
		 	return self.question
		end
	end

	def flip
		if !self.flipped
			self.flipped = true
		else
			self.flipped = false
		end
	end

end


