class CreatorsController < ApplicationController
  before_action :set_creator, only: [:home, :create_genre, :create_adult, :update_genre, :update_adult]

# クリエイターのトップページ
  def home
  end

  def create_name
  end

  def create_creating_things
    @creator = Creator.new(user_id: current_user)
  end

  def create_genre
  end

  def create_adult
  end

  def create
    @creator = Creator.new(creator_params)
    if @creator.save
      redirect_to action: :create_genre
    else
      render :create_creating_things
    end
  end

  def create_done
  end

  def update_genre
    if @creator.update(creator_params)
      redirect_to action: :create_adult
    else
      render :create_genre
    end
  end

  def update_adult
    if @creator.update(creator_params)
      redirect_to action: :create_done
    else
      render :update_adult
    end
  end

  private
  def set_creator
    @creator = Creator.find_by(user_id: current_user.id)
  end

  def creator_params
    params.require(:creator).permit(:creating_things, :genre, :adult_content).merge(user_id: current_user.id)
  end

end
