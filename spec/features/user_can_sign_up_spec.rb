require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "Can visit sign up page and sign up" do
    visit "/users/new"
    fill_in "user[name]", with: "ZOZOthemonkey"
    fill_in "user[username]", with: "ZOZO"
    fill_in "user[email]", with: "ZOZO@netscape.com"
    fill_in "user[password]", with: "zozo1"
    click_button "Sign Up"
    expect(page).to have_content("success!")
  end
end
