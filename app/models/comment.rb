class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :project, optional: true
  belongs_to :comment, optional: true

  has_many :replies, class_name: "Comment", foreign_key: "comment_id", dependent: :destroy

  validates :content, presence: true
end
