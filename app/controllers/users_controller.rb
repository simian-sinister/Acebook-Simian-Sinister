class UsersController < ApplicationController
  def new
  end
  def create
    User.create(
      name: params["user"]["name"],
      email: params["user"]["email"],
      username: params["user"]["username"],
      password: params["user"]["password"]
    )
    render plain: "success!"
  end
end
