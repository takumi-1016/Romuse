class AddUserIdToRooms < ActiveRecord::Migration[6.1]
  def up
    execute 'DELETE FROM rooms;'
    add_reference :rooms, :user, null: false, index: true
  end
  def upuser
    execute 'DELETE FROM users;'
  end
  def down
    remove_referencce :rooms, :user, index: true
  end 
end
