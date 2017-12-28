class CreateRewards < ActiveRecord::Migration[5.0]
  def change
    create_table :rewards do |t|
      t.integer :creator_id, foreign_key: true
      t.integer :price, null: false
      t.string :title, null: false
      t.text :description
      t.string :image
      t.integer :patron_limit
      t.string :ask_address
      t.timestamps
    end
  end
end
