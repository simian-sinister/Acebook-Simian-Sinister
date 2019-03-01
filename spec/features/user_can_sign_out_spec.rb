require_relative '../web_helpers'

RSpec.feature 'Sign out', type: :feature do 
  scenario "Can sign out when signed in" do 
    auto_sign_up
    visit "/posts"
    expect(page).to_not have_content("Sign in")
    click_link "Sign out"
    expect(page).to have_content("Sign in")
  end
end 