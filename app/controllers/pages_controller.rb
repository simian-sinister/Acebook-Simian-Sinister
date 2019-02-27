class PagesController < ApplicationController
  def index
    @user = session['user'] ? session['user']['username'] : nil
  end
end
