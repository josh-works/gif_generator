require 'rails_helper'



describe "User visits new user page" do
  attr_reader :user

  before :each do
    @user = User.create(first_name: "Josh",
                       last_name: "Testompson",
                       email: "test@test.com",
                       password: "password")
  end

  it "they can create new user" do
     visit new_user_path
     fill_in "First name", with: user.first_name
     fill_in "Last name", with: user.last_name
     fill_in "user[email]", with: user.email
     fill_in "Password", with: user.password
     fill_in "user[password_confirmation]", with: user.password
     click_on "Create Account"

    #  expect(current_path).to eq(user_path(user.id))
    #  expect(page).to have_content("Successfully created account")
     expect(page).to have_content("Welcome, Josh")
     expect(page).to have_link "Log Out", href: logout_path
  end
end
