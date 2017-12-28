class FollowsController < ApplicationController
  def create
    @follow = Follow.new(
      user_id: current_user.id,
      creator_id: params[:creator_id]
      )
    @follow.save
    redirect_to "/creators/#{params[:creator_id]}/top"
  end

  def destroy
    @follow = Follow.find_by(
      user_id: current_user.id,
      creator_id: params[:creator_id]
      )
    @follow.destroy
    redirect_to "/creators/#{params[:creator_id]}/top"
  end
end
