def sign_up_nuffmunz
    visit '/users/sign_up'
    fill_in 'user_first_name', with: 'Money'
    fill_in 'user_last_name', with: 'McBags'
    fill_in 'user_username', with: 'nuffmunz'
    fill_in 'user_email', with: 'rich@money.cash'
    fill_in 'user_password', with: 'Neopets 4eva'
    fill_in 'user_password_confirmation', with: 'Neopets 4eva'
    click_on 'Sign up'
end

def create_post_hello_world
  visit '/users/sign_up'
  fill_in 'user_first_name', with: 'Money'
  fill_in 'user_last_name', with: 'McBags'
  fill_in 'user_username', with: 'nuffmunz'
  fill_in 'user_email', with: 'rich@money.cash'
  fill_in 'user_password', with: 'Neopets 4eva'
  fill_in 'user_password_confirmation', with: 'Neopets 4eva'
  click_on 'Sign up'
  click_link 'New post'
  fill_in 'Message', with: 'Hello, world!'
  click_button 'Submit'
end

