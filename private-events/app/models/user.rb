class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :username, presence: true, length: { minimum: 3 }
  validate :password_complexity

  has_many :events, foreign_key: 'creator_id', class_name: 'Event'
  has_many :attendances, dependent: :destroy
  has_many :attended_events, through: :attendances, source: :event

  # Instance method to fetch upcoming attended events
  def upcoming_events
    attended_events.where("date >= ?", Time.zone.now).order(:date)
  end

  private

  def password_complexity
    if password.present?
      unless password =~ /[!@#$%^&*]/
        errors.add :password, "must include at least one symbol"
      end

      unless password =~ /[A-Z]/
        errors.add :password, "must include at least one uppercase letter"
      end

      if password =~ /(\d)\1/
        errors.add :password, "must not have consecutive identical digits"
      end
    end
  end
end
