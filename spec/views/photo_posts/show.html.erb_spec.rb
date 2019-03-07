require 'rails_helper'

RSpec.describe "photo_posts/show", type: :view do
  before(:each) do
    @photo_post = assign(:photo_post, PhotoPost.create!())
  end

  it "renders attributes in <p>" do
    render
  end
end
