class UsersController < ApplicationController
  before_action :move_to_top

  def home
    @creator = Creator.find_by(user_id: current_user.id)
  end

  def profile
    @creator = Creator.find_by(user_id: current_user.id)

  end

  def update
    if current_user.update(user_params)
      redirect_to action: :profile
    else
      render :profile
    end
  end

  def update_name
    if current_user.update(user_params)
      redirect_to create_2_path
    else
      render :profile
    end
  end

  def move_to_top
    redirect_to root_path unless user_signed_in?
  end

  private
  def user_params
    params.require(:user).permit(:name, :email, :mypage_url, :about_user, :location, :avatar_image, :pledge_privacy, :twitter_url, :facebook_url, :youtube_url, :twitch_url, :remove_avatar_image)
  end

end
