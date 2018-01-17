class Post < ApplicationRecord
 # belongs_to :user
  belongs_to :creator,
   class_name: User.name, foreign_key: :user_id
  has_many :comments

  self.per_page = 10
  mount_uploader :image_url, PictureUploader
end