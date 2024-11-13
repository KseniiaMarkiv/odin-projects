class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :attendances, dependent: :destroy
  has_many :attendees, through: :attendances, source: :user

  def absent_location
    location.present? ? location : "Location didn't point"
  end
end
