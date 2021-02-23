class AddUserToPlane < ActiveRecord::Migration[6.0]
  def change
    add_reference :planes, :user, null: false, foreign_key: true
  end
end
