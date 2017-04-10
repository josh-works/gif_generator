class User < ApplicationRecord

  has_secure_password

  has_many :favorite_gifs
  has_many :gifs, through: :favorite_gifs

end
