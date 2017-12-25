class Post < ApplicationRecord
  enum types: { text: 0, image: 1, video: 2, live_stream: 3, audio: 4, link: 5, polls: 6}

  belongs_to :creator
end
