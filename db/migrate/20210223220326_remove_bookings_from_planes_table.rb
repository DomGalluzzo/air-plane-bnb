class RemoveBookingsFromPlanesTable < ActiveRecord::Migration[6.0]
  def change
    remove_reference :planes, :bookings, index: true, foreign_key: true
  end
end
