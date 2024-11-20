class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'
  has_many :attendances, dependent: :destroy
  has_many :attendees, through: :attendances, source: :user

  validates :title, presence: true, length: { minimum: 5, maximum: 100 } 
  validates :date, presence: true 
  validates :location, presence: true 
  validates :description, presence: true, length: { minimum: 10 } 
  
  
  def absent_location
    location.present? ? location : "Location didn't point"
  end
  
  private 
  
  def event_date_cannot_be_in_the_past 
    if date.present? && date < DateTime.now 
      errors.add(:date, "can't be in the past") 
    end 
  end
end
