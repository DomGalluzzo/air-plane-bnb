class CreatePlanes < ActiveRecord::Migration[6.0]
  def change
    create_table :planes do |t|
      t.string :type
      t.integer :max_occupancy
      t.integer :price
      t.string :address
      t.integer :latitude
      t.integer :longitude
      t.references :booking, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
