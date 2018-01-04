class AddPriceToPledges < ActiveRecord::Migration[5.0]
  def change
    add_column :pledges, :price, :integer, null: false
  end
end
