class AddDescriptionToCryptids < ActiveRecord::Migration[6.0]
  def change
    add_column :cryptids, :description, :text
  end
end
