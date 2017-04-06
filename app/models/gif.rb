class Gif < ApplicationRecord

 has_many :gif_categories
 has_many :categories, through: :gif_categories

end
