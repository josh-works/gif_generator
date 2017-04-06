require 'rails_helper'

RSpec.describe Gif, type: :model do
  xcontext "users associations" do
    it {should have_many(:favorite_gifs) }
    it {should have_many(:users).through(:favorite_gifs)}
  end

  xcontext "categories associations" do
    it {should have_many(:gif_categories)}
    it {should have_many(:categories).through(:gif_categories)}
  end
end
