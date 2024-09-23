class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :post

  validates :user_id, :post_id, :commenter, :body, presence: true
  validates :commenter, length: { maximum: 60 }
  validates :body, length: { maximum: 1250 }
end



