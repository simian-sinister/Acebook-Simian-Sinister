require 'rails_helper'
require 'web_helper'

RSpec.feature 'CRUD post', type: :feature do
  scenario 'Can submit posts and view them' do
    sign_up_nuffmunz
    expect(page).to have_content("Welcome, nuffmunz")
    click_link 'New post'
    fill_in 'Message', with: 'Hello, world!'
    click_button 'Submit'
    expect(page).to have_content('Hello, world!')
  end
end