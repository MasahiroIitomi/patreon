class Reward < ApplicationRecord

  mount_uploader :image, RewardUploader

  has_many :users, through: :pledges
  belongs_to :creator
  has_many :pledges
end
