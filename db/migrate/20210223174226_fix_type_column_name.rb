class FixTypeColumnName < ActiveRecord::Migration[6.0]
  def change
    rename_column :planes, :type, :plane_type
    #Ex:- rename_column("admin_users", "pasword","hashed_pasword")
  end
end
