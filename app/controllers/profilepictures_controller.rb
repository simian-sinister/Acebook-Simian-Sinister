class ProfilepicturesController < ApplicationController

  def edit
    @user = current_user
  end

  def update
    @user = current_user
    @user.profile_picture.attach(params[:profile_picture])
    redirect_to posts_url
    end

  def destroy
    @user = current_user
    @user.profile_picture.purge
    redirect_to posts_url
  end
end
