class AddSsReferenceToComment < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :image, index: true
  end
end
