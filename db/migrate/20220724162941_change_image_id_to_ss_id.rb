class ChangeImageIdToSsId < ActiveRecord::Migration[6.1]
  def change
    rename_column :comments, :image_id, :screenshot_id
  end
end
