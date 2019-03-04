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
    expect(page).to have_content("welcome, nuffmunz")
  end
end
