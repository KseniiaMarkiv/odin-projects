class Post < ApplicationRecord
  validates :title, :body, presence: true
  validates :title, length: { in: 3..100 }
  validates :body, length: { maximum: 3000 }

  belongs_to :user
  has_many :comments, dependent: :destroy
end
