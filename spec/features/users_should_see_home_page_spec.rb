require 'rails_helper'

describe "users should see home page" do
  context "after adding gif to db" do
    it "shows gifs on page" do
      Gif.create(image_path: 'https://media.giphy.com/media/1apNICVnC3AEo/giphy.gif')
      Gif.create(image_path: 'https://media.giphy.com/media/yYSSBtDgbbRzq/giphy.gif')

      visit root_path
      expect(page).to have_content "All Gifs"
      expect(page).to have_css("img[src*='https://media.giphy.com/media/1apNICVnC3AEo/giphy.gif']")
      expect(page).to have_css("img[src*='https://media.giphy.com/media/yYSSBtDgbbRzq/giphy.gif']")
    end
  end

  context "it should show auth buttons" do
    it "shows 'new user' button" do
      visit root_path
      expect(page).to have_link "Create New Account", href: new_user_path
    end

    it "shows 'log in' button" do
      visit root_path
      expect(page).to have_link "Log In", href: login_path
    end
  end
end
