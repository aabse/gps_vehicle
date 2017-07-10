class CreateLocations < ActiveRecord::Migration
  def change
    create_table :locations do |t|
      t.float :latitude
      t.float :longitude
      t.datetime :sent_at
      t.references :vehicle, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
