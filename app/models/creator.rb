class Creator < ApplicationRecord

  enum genre: { "Video & Films": 0, "Music": 1, "Writing": 2, "Comics": 3, "Drawing & Painting": 4, "Animation": 5, "Podcasts": 6, "Games": 7, "Photography": 8, "Comedy": 9, "Science": 10, "Education": 11, "Crafts & DIY": 12, "dance & Theater": 13 }

  mount_uploader :cover_image, CoverUploader

  belongs_to :user
  has_many :posts
  has_many :follows
end
