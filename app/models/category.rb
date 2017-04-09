class Category < ApplicationRecord

  has_many :gif_categories
  has_many :gifs, through: :gif_categories

end
