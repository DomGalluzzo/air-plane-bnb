class AddPlaneToBookkings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :plane, null: false, foreign_key: true
  end
end
