class AddCharacterIdsToComments < ActiveRecord::Migration[6.1]
  def change
    add_reference :comments, :character, index: true
  end
end
