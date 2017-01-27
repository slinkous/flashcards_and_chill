class User < ActiveRecord::Base
  has_many :decks
  has_many :rounds
  has_many :guesses, through: :rounds

  validates :username, uniqueness: true, presence: true
  validates :email, uniqueness: true, presence: true
  validates :password_hash, presence: true


  def password
    @password ||= BCrypt::Password.new(password_hash)
  end

  def password=(new_password)
    @password = BCrypt::Password.create(new_password)
    self.password_hash = @password
  end

  def self.authenticate(email, password)
    valid_user = User.find_by(email: email)
    valid_user.password == password ? valid_user : nil
  end





end
