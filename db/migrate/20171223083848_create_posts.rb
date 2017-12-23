class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :creator_id, foreign_key: true
      t.integer :type
      t.string :title
      t.text :body
      t.integer :public_or_patron
      t.integer :rewards_id, foreign_key: true
      t.timestamps
    end
  end
end
