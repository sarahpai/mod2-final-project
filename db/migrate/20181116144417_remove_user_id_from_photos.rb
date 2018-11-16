class RemoveUserIdFromPhotos < ActiveRecord::Migration[5.2]
  def change
    remove_column :photos, :user_id
  end
end
