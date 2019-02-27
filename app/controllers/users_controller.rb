class UsersController < ApplicationController
  def new
  end
  def create
    session['user'] = User.create(
      name: params["user"]["name"],
      email: params["user"]["email"],
      username: params["user"]["username"],
      password: params["user"]["password"]
    )
    redirect_to pages_url
  end
end
