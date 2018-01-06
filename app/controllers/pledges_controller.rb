class PledgesController < ApplicationController

  before_action :set_creator, except: [:create]
  before_action :set_creator_myself, except: [:create]

  def be_patron
    @rewards = Reward.where(creator_id: params[:creator_id]).order(created_at: :desc)
    @pledge = Pledge.new(creator_id: params[:creator_id], user_id: current_user.id)
  end

  def checkout
    @rewards = Reward.where(creator_id: params[:creator_id]).order(created_at: :desc)
    @pledge = Pledge.new(pledge_params)
    render :be_patron if @pledge.invalid?
  end

  def create
    @pledge = Pledge.new(pledge_params_confirm)

    # render用
    @creator = Creator.find_by(id: @pledge.creator_id)
    @rewards = Reward.where(creator_id: @pledge.creator_id).order(created_at: :desc)

    if params[:back]
      redirect_to "/bePatron/#{@creator.id}"
      # render :be_patron
    elsif @pledge.save
      redirect_to "/creators/#{@creator.id}/top"
    else
      redirect_to "/bePatron/#{@creator.id}"
      # render :be_patron
    end
  end

  private
  def set_creator
    @creator = Creator.find_by(id: params[:creator_id])
  end

  def set_creator_myself
    @creatorMyself = Creator.find_by(user_id: current_user.id)
  end

  def pledge_params
    params.require(:pledge).permit(:price, :reward_id).merge(creator_id: params[:creator_id], user_id: current_user.id)
  end

  # create用pledge_params
  def pledge_params_confirm
    params.require(:pledge).permit(:price, :reward_id, :creator_id).merge(user_id: current_user.id)
  end

end
