require 'rails_helper'
require 'web_helper'

RSpec.feature 'CRUD post', type: :feature do
  scenario 'Can submit posts and view them' do
    sign_up_nuffmunz
    expect(page).to have_content("Welcome, nuffmunz")
    create_post_hello_world
    expect(page).to have_content('Hello, world!')
  end

  scenario 'Can view posts in a reverse order'do 
  sign_up_nuffmunz
    expect(page).to have_content("Welcome, nuffmunz")
    create_post_hello_world
    create_post_bah
    expect('bah').to appear_before('Hello, world!')
  end

  scenario 'Can delete their post' do
    sign_up_eddie
    create_post_hello_world
    expect(page).to have_content('Hello, world!')
    click_on 'Delete'
    expect(page).to_not have_content('Hello, world!')
  end

  scenario 'Can only delete their own post' do
    sign_up_eddie
    create_post_hello_world
    click_on 'Sign out'
    sign_up_nuffmunz
    expect(page).to_not have_content('Delete')
  end

  scenario 'Can update their post' do
    sign_up_eddie
    create_post_hello_world
    expect(page).to have_content('Hello, world!')
    click_on 'Update'
    fill_in 'Message', with: 'updated: Hello, world!'
    click_on 'Update'
    expect(page).to have_content('updated: Hello, world!')
  end

  scenario 'Can only update their own post' do
    sign_up_eddie
    create_post_hello_world
    click_on 'Sign out'
    sign_up_nuffmunz
    expect(page).to_not have_content('Update')
  end

  scenario 'Can not update their own post after 10 minutes' do
    @time = (Time.now + (10*60 + 1))
    sign_up_eddie
    create_post_hello_world
    allow(Time).to receive(:now).and_return(@time)
    visit '/posts'
    expect(page).to_not have_content('Update')
  end
end