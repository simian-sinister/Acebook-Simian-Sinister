require 'rails_helper'
require 'web_helper'

RSpec.feature 'Sign', type: :feature do

  scenario 'User can attach a profile picture at signup' do
    sign_up_with_picture_nuffmunz
    expect(page.find('#profile-picture img')['src']).to have_content 'monkeyboi.jpg'
    click_on "update profile picture"
    attach_file("Profile picture", Rails.root + "spec/fixtures/monkeyboi2.jpg")
    click_on "update"
    expect(page.find('#profile-picture img')['src']).to_not have_content 'monkeyboi.jpg'
    expect(page.find('#profile-picture img')['src']).to have_content 'monkeyboi2.jpg'
  end
end
