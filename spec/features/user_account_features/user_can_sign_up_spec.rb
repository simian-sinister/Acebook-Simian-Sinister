require 'rails_helper'

RSpec.feature 'Sign', type: :feature do
  scenario 'Users can sign up' do
    visit '/users/sign_up'
    fill_in 'first_name', with: 'Money'
    fill_in 'last_name', with: 'McBags'
    fill_in 'username', with: 'nuffmunz'
    fill_in 'email', with: 'rich@money.cash'
    fill_in 'password', with: 'Neopets 4eva'
    fill_in 'password_confirmation', with: 'Neopets 4eva'
    click_on 'Sign up'
    expect(page).to have_content("welcome, nuffmunz")
  end
end
