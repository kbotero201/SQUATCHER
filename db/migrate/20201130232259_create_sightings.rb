class CreateSightings < ActiveRecord::Migration[6.0]
  def change
    create_table :sightings do |t|
      t.string :date
      t.string :location
      t.string :creature_temperament
      t.integer :fear_rating
      t.string :description
      t.integer :expedition_id
      t.integer :user_id
      t.integer :cryptid_id

      t.timestamps
    end
  end
end
