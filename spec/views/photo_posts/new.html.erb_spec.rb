require 'rails_helper'

RSpec.describe "photo_posts/new", type: :view do
  before(:each) do
    assign(:photo_post, PhotoPost.new())
  end

  it "renders new photo_post form" do
    render

    assert_select "form[action=?][method=?]", photo_posts_path, "post" do
    end
  end
end
