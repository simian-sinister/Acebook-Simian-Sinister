require 'rails_helper'

RSpec.describe "photo_posts/edit", type: :view do
  before(:each) do
    @photo_post = assign(:photo_post, PhotoPost.create!())
  end

  it "renders the edit photo_post form" do
    render

    assert_select "form[action=?][method=?]", photo_post_path(@photo_post), "post" do
    end
  end
end
