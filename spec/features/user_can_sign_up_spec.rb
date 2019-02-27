require 'rails_helper'

RSpec.feature "Sign up", type: :feature do
  scenario "Can visit sign up page and sign up" do
    visit "/"
    click_button "Sign Up"
    fill_in "Name", with: "ZOZO_the_monkey"
    fill_in "Username", with: "ZOZO"
    fill_in "Email", with: "ZOZO@netscape.com"
    fill_in "Password", with: "zozo1"
    click_button "Submit"
    expect(page).to have_content("success!")
  end
end
