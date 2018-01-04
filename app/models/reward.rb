class Reward < ApplicationRecord

  mount_uploader :image, RewardUploader

  validates :price, presence: true, numericality: {only_integer: true}
  validates :title, presence: true

  has_many :users, through: :pledges
  belongs_to :creator
  has_many :pledges
end
