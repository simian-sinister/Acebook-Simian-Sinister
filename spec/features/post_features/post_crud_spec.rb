require 'rails_helper'
require 'web_helper'

RSpec.feature 'CRUD post', type: :feature do
  scenario 'Can submit posts and view them' do
    sign_up_nuffmunz
    expect(page).to have_content("Welcome, nuffmunz")
    click_link 'New post'
    fill_in 'Message', with: 'Hello, world!'
    click_on 'Submit'
    expect(page).to have_content('Hello, world!')
  end

  scenario 'Can delete their post' do
    create_post_hello_world
    expect(page).to have_content('Hello, world!')
    click_on 'Delete'
    expect(page).to_not have_content('Hello, world!')
  end
end