class PostsController < ApplicationController
  def new
    @post = Post.new
  end

  def create
    @post = Post.create(post_params)
    redirect_to posts_url
  end

  def index
    @posts = Post.all
  end

  private

  def post_params
    return_hash = params.require(:post).permit(:message)
    puts return_hash
    puts current_user
    return_hash['user_id'] = current_user.id
    p return_hash
    return return_hash
  end
end
