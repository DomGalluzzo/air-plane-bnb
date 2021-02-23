class EraseBookingsFromPlaneTable < ActiveRecord::Migration[6.0]
  def self.down
    remove_column :planes, :bookings_id
  end
end
