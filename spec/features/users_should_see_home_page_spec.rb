require 'rails_helper'

describe "users should see home page" do
  context "after adding gif to db" do
    it "shows gifs on page" do

      Gif.create(image_path: 'https://media.giphy.com/media/1apNICVnC3AEo/giphy.gif')
      Gif.create(image_path: 'https://media.giphy.com/media/yYSSBtDgbbRzq/giphy.gif')

      visit root_path
      save_and_open_page
      expect(page).to have_content "All Gifs"
      expect(page).to have_css("img[src*='https://media.giphy.com/media/1apNICVnC3AEo/giphy.gif']")
      expect(page).to have_css("img[src*='https://media.giphy.com/media/yYSSBtDgbbRzq/giphy.gif']")
    end
  end
end
