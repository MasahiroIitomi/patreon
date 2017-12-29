class RewardsController < ApplicationController
  def edit
    @creatorMyself = Creator.find_by(id: current_user.creator.id)
    render layout: "creator_edit"
  end

  def create
  end
end
