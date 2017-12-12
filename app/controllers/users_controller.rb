class UsersController < ApplicationController
  before_action :move_to_top

  def home
  end

  def move_to_top
    redirect_to root_path unless user_signed_in?
  end

end
