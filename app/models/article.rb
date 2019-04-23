class Article < ApplicationRecord
	has_many :comments , dependent: :destroy
	mount_uploaders :image, ImageUploader
	serialize :image, JSON
	validates :title, presence: true,
                    length: { minimum: 5 }

end
