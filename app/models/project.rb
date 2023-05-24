class Project < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy

    validates :title, presence: true

    mount_uploader :image, ProjectUploader

    enum status: { draft: 0, published: 1}
end
