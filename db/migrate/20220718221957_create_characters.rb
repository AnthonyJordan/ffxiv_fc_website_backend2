class CreateCharacters < ActiveRecord::Migration[6.1]
  def change
    create_table :characters do |t|
      t.string :first_name,  null: false
      t.string :last_name,  null: false
      t.string :role
      t.string :house_location
      t.text :bio

      t.timestamps
    end
  end
end
