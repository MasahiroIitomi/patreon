class RewardsController < ApplicationController
  def edit
    @creatorMyself = Creator.find_by(id: current_user.creator.id)
    @reward = Reward.new(creator_id: current_user.creator.id)
    render layout: "creator_edit"
  end

  def create
    @reward = Reward.new(reward_params)
    if @reward.save
      redirect_to edit_creator_path(current_user.creator.id)
    else
      render :edit
    end
  end

  private
  def reward_params
    params.require(:reward).permit(:price, :title, :description, :image, :patron_limit, :ask_address).merge(creator_id: current_user.creator.id)
  end
end
