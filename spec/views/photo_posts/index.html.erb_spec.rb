require 'rails_helper'

RSpec.describe "photo_posts/index", type: :view do
  before(:each) do
    assign(:photo_posts, [
      PhotoPost.create!(),
      PhotoPost.create!()
    ])
  end

  it "renders a list of photo_posts" do
    render
  end
end
