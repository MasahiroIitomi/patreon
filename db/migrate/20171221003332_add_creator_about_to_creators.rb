class AddCreatorAboutToCreators < ActiveRecord::Migration[5.0]
  def change
    add_column :creators, :crator_about, :text
  end
end
