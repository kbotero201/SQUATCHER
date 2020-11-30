class CreateExpeditions < ActiveRecord::Migration[6.0]
  def change
    create_table :expeditions do |t|
      t.integer :days
      t.string :season
      t.string :region
      t.integer :user_id

      t.timestamps
    end
  end
end
