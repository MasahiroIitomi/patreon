class PostsController < ApplicationController
  before_action :set_creator, only: [:select, :text_create]

  def select
  end

  def text_create
    @post = Post.new(creator_id: current_user.creator.id)
  end

  def create
    @post = Post.new(post_params)
    @post.types = :text
    if @post.save
      redirect_to "/creators/#{@post.creator_id}/top"
    else
      render :text_create
    end
  end

  private
  def set_creator
    @creatorMyself = Creator.find_by(user_id: current_user.id)
  end

  def post_params
    params.require(:post).permit(:type, :title, :body, :public_setting).merge(creator_id: current_user.creator.id)
  end

end
