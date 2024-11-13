class Event < ApplicationRecord
  belongs_to :creator, class_name: 'User', foreign_key: 'creator_id'

  def absent_location
    location.present? ? location : "Location didn't point"
  end
end
