class Round < ActiveRecord::Base
  belongs_to :deck
  belongs_to :user
  has_many :guesses

  validates :deck_id, presence: true

  def correct
    if user.answer == answer
      true
    else
      false
    end
  end

  def answered


  end

  def total

  end
end
