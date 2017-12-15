class Creator < ApplicationRecord

  enum genre: { video_and_films: 0, music: 1, writing: 2, comics: 3, drawing_and_painting: 4, animation: 5, podcasts: 6, games: 7, photography: 8, comedy: 9, comedy: 10, science: 11, education: 12, crafts_and_diy: 13, dance_and_theater: 14 }

  belongs_to :user
end
