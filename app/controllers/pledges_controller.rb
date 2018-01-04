class PledgesController < ApplicationController

  before_action :set_creator, only:[:be_patron]
  before_action :set_creator_myself, only:[:be_patron]

  def be_patron
  end


  private
  def set_creator
    @creator = Creator.find_by(id: params[:id])
  end

  def set_creator_myself
    @creatorMyself = Creator.find_by(user_id: current_user.id)
  end
end
