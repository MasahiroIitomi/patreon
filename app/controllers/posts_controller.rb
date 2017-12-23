class PostsController < ApplicationController
  before_action :set_creator, only: [:select]

  def select
  end

  private
  def set_creator
    @creator = Creator.find_by(user_id: current_user.id)
  end
end
