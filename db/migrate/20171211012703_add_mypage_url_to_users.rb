class AddMypageUrlToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :mypage_url, :text
    add_column :users, :about_user, :text
    add_column :users, :location, :string
    add_column :users, :avatar_image, :string
    add_column :users, :pledge_privacy, :boolean
    add_column :users, :twitter_url, :text
    add_column :users, :facebook_url, :text
    add_column :users, :youtube_url, :text
    add_column :users, :twitch_url, :text
  end
end
