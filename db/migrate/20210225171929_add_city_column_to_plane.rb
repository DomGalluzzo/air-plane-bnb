class AddCityColumnToPlane < ActiveRecord::Migration[6.0]
  def change
    add_column :planes, :city, :string
  end
end
