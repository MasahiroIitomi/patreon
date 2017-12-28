class Reward < ApplicationRecord
  has_many :users, through: :pledges
  belongs_to :creator
  has_many :pledges
end
