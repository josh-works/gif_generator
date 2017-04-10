require 'rails_helper'


describe "User visits login page" do

  before :each do
    User.create(first_name: "Josh",
                       last_name: "Testompson",
                       email: "test@test.com",
                       password: "password")
  end

  it "they can log in" do
    visit login_path
    fill_in "Email", with: "test@test.com"
    fill_in "Password", with: "password"
    click_on "Login"

    expect(page).to have_content "Welcome back Josh"
    expect(page).to have_content "Logout"
  end
end
