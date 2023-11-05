class AddBranchRefToRooms < ActiveRecord::Migration[7.1]
  def change
    add_reference :rooms, :branch, null: false, foreign_key: true
  end
end
