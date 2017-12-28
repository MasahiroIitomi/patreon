class Pledge < ApplicationRecord
  belongs_to :user
  belongs_to :reward
  belongs_to :creator
end
