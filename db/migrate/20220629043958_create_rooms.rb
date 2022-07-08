class CreateRooms < ActiveRecord::Migration[6.1]
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :introduction
      t.integer :price
      t.string :location
      t.string :room_image

      t.timestamps
    end
  end
end
