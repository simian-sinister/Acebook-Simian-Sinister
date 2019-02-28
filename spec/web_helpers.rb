def auto_sign_up
 visit "/users/sign_up"
 fill_in "user_first_name", with: "ZOZO"
 fill_in "user_last_name", with: "themonkey"
 fill_in "user_username", with: "ZOZO"
 fill_in "user_email", with: "ZOZO@netscape.com"
 fill_in "user_password", with: "zozo1111"
 fill_in "user_password_confirmation", with: "zozo1111"
 click_button "Sign up"
end
