class Post < ApplicationRecord
  enum type: { text: 0, image: 1, video: 2, live_stream: 3, audio: 4, link: 5, polls: 6}
end
