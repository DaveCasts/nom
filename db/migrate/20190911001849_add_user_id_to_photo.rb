class AddUserIdToPhoto < ActiveRecord::Migration[5.2]
  def change
    add_column :photos, :picture, :integer
  end
end
