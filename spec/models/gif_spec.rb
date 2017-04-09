require 'rails_helper'

RSpec.describe Gif, type: :model do
  context "users associations" do
    it {should have_many(:favorite_gifs) }
    it {should have_many(:users).through(:favorite_gifs)}
  end

  context "categories associations" do
    it {should have_many(:gif_categories)}
    it {should have_many(:categories).through(:gif_categories)}
  end
end
