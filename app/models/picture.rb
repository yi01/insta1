class Picture < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  belongs_to :user
  validates :comment, presence: true

end
