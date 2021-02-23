class EraseBookingsFromPlaneTable < ActiveRecord::Migration[6.0]
  def change
    remove_column :planes, bookings_id
  end
end
