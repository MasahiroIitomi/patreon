class UsersController < ApplicationController
  before_action :move_to_top

  def home
  end

  def profile
  end

  def move_to_top
    redirect_to root_path unless user_signed_in?
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :mypage_url, :about_user, :location, :avatar_image, :pledge_privacy, :twitter_url, :facebook_url, :youtube_url, :twitch_url)
  end

end
