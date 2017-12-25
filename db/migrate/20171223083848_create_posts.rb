class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.integer :creator_id, foreign_key: true
      t.integer :types, default: 0
      t.string :title
      t.text :body
      t.integer :public_setting
      t.timestamps
    end
  end
end
