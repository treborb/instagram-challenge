class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  acts_as_votable

  mount_uploader :image, ImageUploader

  validates_presence_of   :image
  validates_integrity_of  :image
  validates_processing_of :image

end
