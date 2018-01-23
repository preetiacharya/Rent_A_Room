class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.text :description
      t.float :price
      t.text :rules
      t.integer :minimum_days
      t.text :address
      t.float :latitude
      t.float :longitude
      t.boolean :is_authorized
      t.integer :city_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
