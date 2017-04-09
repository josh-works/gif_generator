require 'rails_helper'

RSpec.describe User, type: :model do
  context "gif associations" do
    it {should have_many(:favorite_gifs)}
    it {should have_many(:gifs).through(:favorite_gifs)}
  end
end
