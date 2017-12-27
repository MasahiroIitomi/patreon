class TopController < ApplicationController
  before_action :move_to_user_home

  def home
  end

  def search
    @creators = Creator.user.where('name LIKE(?)', "%#{params[:keyword]}%")
    respond_to do |format|
      format.html
      format.json
    end
  end

  def move_to_user_home
    redirect_to home_path if user_signed_in?
  end
end
