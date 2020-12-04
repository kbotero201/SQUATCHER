class AddImgUrlToCryptids < ActiveRecord::Migration[6.0]
  def change
    add_column :cryptids, :img_url, :string
  end
end
