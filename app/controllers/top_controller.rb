class TopController < ApplicationController
  before_action :move_to_user_home, except: [:search]

  def home
  end

  def search
    # binding.pry
    @creators = []
    @users = User.where('name LIKE(?)', "%#{params[:keyword]}%").limit(5)
    @users.map{|user| @creators << user.creator}
    respond_to do |format|
      format.html
      format.json
    end
  end

  def move_to_user_home
    redirect_to home_path if user_signed_in?
  end
end
