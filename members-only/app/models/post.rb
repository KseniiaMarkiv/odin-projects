class Post < ApplicationRecord
  validates :title, :body, presence: true
  validates :title, length: { in: 1..220 }
  validates :body, length: { in: 10..3000 }

  belongs_to :user
end
