class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :username, :email, :password, presence: true
  validates :username, length: { minimum: 3 }
  validates :password, length: { in: 8..20 }
  validates :password, confirmation: true
  validates :email, format: { with: /\A[^@\s]+@[^@\s]+\.[^@\s]+\z/, message: "must be in the format 'string@string.string'" }
  validate :password_complexity

  private

  def password_complexity
    if password.blank?
      errors.add(:password, "can't be blank")
    else
      unless password =~ /[!@#$%^&*]/
        errors.add(:password, "must include at least one symbol")
      end
  
      unless password =~ /[A-Z]/
        errors.add(:password, "must include at least one uppercase letter")
      end
  
      if password =~ /(\d)\1/
        errors.add(:password, "must not have consecutive identical digits")
      end
    end
  end
end
