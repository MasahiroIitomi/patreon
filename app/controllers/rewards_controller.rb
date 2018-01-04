class RewardsController < ApplicationController
  def edit
    @creatorMyself = Creator.find_by(id: current_user.creator.id)
    @reward = Reward.new(creator_id: current_user.creator.id)
    @myRewards = Reward.where(creator_id: current_user.creator.id).order(created_at: :desc)
    render layout: "creator_edit"
  end

  def create
    @reward = Reward.new(reward_params)
    if @reward.save
      redirect_to edit_creator_path(current_user.creator.id)
    else
      redirect_to edit_creator_path(current_user.creator.id)
    end
  end

  def update
    @reward = Reward.find_by(id: params[:id])
    if @reward.update(reward_params)
      redirect_to edit_creator_path(current_user.creator.id)
    else
      redirect_to edit_creator_path(current_user.creator.id)
    end
  end

  def destroy
    @reward = Reward.find_by(id: params[:id])
    @reward.destroy
    redirect_to edit_creator_path(current_user.creator.id)
  end

  private
  def reward_params
    params.require(:reward).permit(:price, :title, :description, :image, :patron_limit, :ask_address).merge(creator_id: current_user.creator.id)
  end
end
