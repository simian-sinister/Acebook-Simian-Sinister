require 'rails_helper'

RSpec.feature 'Sign', type: :feature do
  scenario 'Users can sign up' do
    visit '/users/sign_up'
    fill_in 'user_first_name', with: 'Money'
    fill_in 'user_last_name', with: 'McBags'
    fill_in 'user_username', with: 'nuffmunz'
    fill_in 'user_email', with: 'rich@money.cash'
    fill_in 'user_password', with: 'Neopets 4eva'
    fill_in 'user_password_confirmation', with: 'Neopets 4eva'
    click_on 'Sign up'
    expect(page).to have_content("Welcome, nuffmunz")
  end

  scenario 'User can attach a profile picture at signup' do
    visit '/users/sign_up'
    fill_in 'user_first_name', with: 'Money'
    fill_in 'user_last_name', with: 'McBags'
    fill_in 'user_username', with: 'nuff munz'
    fill_in 'user_email', with: 'rich@money.cash'
    fill_in 'user_password', with: 'Neopets 4eva'
    fill_in 'user_password_confirmation', with: 'Neopets 4eva'
    attach_file("Choose file", Rails.root + "spec/fixtures/monkeyboi.jpg")
    click_on 'Sign up'
    expect(page.find('#profile-picture')['src']).to have_content 'monkeyboi.jpg'
  end
end
