class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  mount_uploader :avatar_image, AvatarUploader

  has_one :creator
  accepts_nested_attributes_for :creator
  has_many :follows
  has_many :pledges
  has_many :rewards, through: :pledges
end
