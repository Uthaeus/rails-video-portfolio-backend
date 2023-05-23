class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :project, optional: true
  belongs_to :comment, optional: true

  validates :content, presence: true
end
