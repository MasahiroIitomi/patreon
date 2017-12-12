class TopController < ApplicationController
  before_action :move_to_user_home

  def home
  end

  def move_to_user_home
    redirect_to home_path if user_signed_in?
  end
end
