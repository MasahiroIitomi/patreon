class PledgesController < ApplicationController

  before_action :set_creator, only:[:be_patron]
  before_action :set_creator_myself, only:[:be_patron]

  def be_patron
    @rewards = Reward.where(creator_id: params[:creator_id]).order(created_at: :desc)
    @pledge = Pledge.new(creator_id: params[:creator_id], user_id: current_user.id)
  end

  def create
  end


  private
  def set_creator
    @creator = Creator.find_by(id: params[:creator_id])
  end

  def set_creator_myself
    @creatorMyself = Creator.find_by(user_id: current_user.id)
  end
end
