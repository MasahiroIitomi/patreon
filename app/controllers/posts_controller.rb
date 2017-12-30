class PostsController < ApplicationController
  before_action :set_creator, only: [:select, :text_create, :destroy, :edit]

  def select
  end

# テキストの投稿作成画面
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

  def edit
    @post = Post.find_by(id: params[:id])
  end

  def update
    @post = Post.find_by(id: params[:id])
    if @post.update(post_params)
      redirect_to "/creators/#{@post.creator_id}/top"
    else
      render :edit
    end
  end

  def destroy
    @post = Post.find_by(id: params[:id])
    @post.destroy
    redirect_to "/creators/#{@creatorMyself.id}/top"
  end

  private
  def set_creator
    @creatorMyself = Creator.find_by(user_id: current_user.id)
  end

  def post_params
    params.require(:post).permit(:type, :title, :body, :public_setting).merge(creator_id: current_user.creator.id)
  end

end
