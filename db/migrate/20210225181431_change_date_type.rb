class ChangeDateType < ActiveRecord::Migration[6.0]
  def change
    remove_column :bookings, :date
    add_column :bookings, :booking_date, :date
  end
end
