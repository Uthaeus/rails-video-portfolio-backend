class Project < ApplicationRecord
    belongs_to :user
    has_many :comments, dependent: :destroy

    validates :title, presence: true

    mount_uploader :image, ProjectUploader
end
