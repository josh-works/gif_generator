class User < ApplicationRecord

  has_many :favorite_gifs
  has_many :gifs, through: :favorite_gifs

end
