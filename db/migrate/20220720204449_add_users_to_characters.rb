class AddUsersToCharacters < ActiveRecord::Migration[6.1]
  def change
    add_reference :characters, :user, index: true
  end
end
