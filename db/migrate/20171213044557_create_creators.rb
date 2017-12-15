class CreateCreators < ActiveRecord::Migration[5.0]
  def change
    create_table :creators do |t|
      t.integer :user_id, foreign_key: true
      t.string :creating_things, null:false
      t.string :is_or_are
      t.string :cover_image
      t.integer :genre
      t.integer :adult_content
      t.integer :reward_id, foreign_key: true
      t.integer :earning_privacy
      t.timestamps
    end
  end
end
