class AddNameToExpeditions < ActiveRecord::Migration[6.0]
  def change
    add_column :expeditions, :name, :string
  end
end
