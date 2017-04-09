class Gif < ApplicationRecord

 has_many :gif_categories
 has_many :categories, through: :gif_categories
 has_many :favorite_gifs
 has_many :users, through: :favorite_gifs

end
