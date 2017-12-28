class CreateFollows < ActiveRecord::Migration[5.0]
  def change
    create_table :follows do |t|
      t.integer :user_id, foreign_key: true, presence: true
      t.integer :creator_id, foreign_key: true, presence: true
      t.timestamps
    end
  end
end
