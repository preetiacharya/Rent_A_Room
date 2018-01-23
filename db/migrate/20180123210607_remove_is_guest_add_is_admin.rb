class RemoveIsGuestAddIsAdmin < ActiveRecord::Migration
  def change
    remove_column :users, :is_guest
    add_column :users, :is_admin, :boolean
  end
end
