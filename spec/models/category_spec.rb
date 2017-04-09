require 'rails_helper'

RSpec.describe Category, type: :model do
  context "gif associations" do
    it {should have_many(:gif_categories)}
    it {should have_many(:gifs).through(:gif_categories)}
  end
end
